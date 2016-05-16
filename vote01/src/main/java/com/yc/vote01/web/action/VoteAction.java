package com.yc.vote01.web.action;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;
import com.yc.vote01.entity.Item;
import com.yc.vote01.entity.OptionBean;
import com.yc.vote01.entity.SubjectBean;
import com.yc.vote01.entity.VoteBean;
import com.yc.vote01.service.VoteService;

@Controller("voteAction")

public class VoteAction implements SessionAware,ModelDriven<Item>{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -7612768335645350311L;
	
	private Item item;
	@Autowired
	private VoteService voteService;

	private Map<String,Object> session;
	
	public String list() {
		List<SubjectBean> subjects = voteService.findAllSubjectBeans();
		LogManager.getLogger().debug("list请求发送成功呢");		
		session.put("subjects", subjects);
		return "list";
	
	}
	public String view(){
		LogManager.getLogger().debug("view取到的vsId="+item.getVsId());
		OptionBean optionBean = voteService.findOptionsByVsId(item.getVsId());
		session.put("optionBean", optionBean);
		return "view";
	}
	public String vote(){
		LogManager.getLogger().debug("vote取到的vsId="+item.getVsId());
		VoteBean voteBean = voteService.findVoteBeanByVsId(item.getVsId());
		session.put("voteBean", voteBean);
		return "vote";
	}
	
	public String save(){
		String [] voId = ServletActionContext.getRequest().getParameterValues("voId");
		LogManager.getLogger().debug("save取到的Item="+item +"voId="+Arrays.toString(voId));
		 try {
			voteService.saveVote(item,voId);
			return "voteSuccess";
		} catch (Exception e) {}
		 session.put("saveMsg", "投票失败！");
		 return "saveFail";
	}
	
	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;		
	}

	@Override
	public Item getModel() {
		item = new Item();		
		return item;
	}

}

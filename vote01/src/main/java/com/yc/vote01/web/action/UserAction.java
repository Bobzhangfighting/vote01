package com.yc.vote01.web.action;

import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

import com.yc.vote01.entity.User;
import com.yc.vote01.service.UserService;
import com.yc.vote01.util.VoteData;

@Controller("userAction")
public class UserAction implements ModelDriven<User>,SessionAware{
	private User user;
	
	@Autowired
	private UserService userService;
	private Map<String,Object> session;
	
	public String login(){
	LogManager.getLogger().debug("login登录操作");
	LogManager.getLogger().debug("login登录操作数据==》"+user);
	user = userService.login(user);
	if(user == null){
		session.put(VoteData.ERROR_MSG, "用户名或密码错误");
		return "login";
	}
	session.put(VoteData.LOGIN_USER, user);
	return "loginSuccess";
	}
	
	
	public String reg(){
		
		LogManager.getLogger().debug("reg注册操作");
		String confirmPassword = ServletActionContext.getRequest().getParameter("confirmPassword");
		LogManager.getLogger().debug("reg注册操作数据==>"+user);
		if(confirmPassword. equals(user.getVupassword()) ){
			userService.register(user);			
			session.put("user", user);
			return "registerSuccess";
		}
			session.put(VoteData.ERROR_MSG, "注册失败");
			return "register";
	}

	

	@Override
	public User getModel() {
	user = new User();
	return user;
	}

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}	
}

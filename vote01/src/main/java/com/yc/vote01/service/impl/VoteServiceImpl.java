package com.yc.vote01.service.impl;

import java.util.List;

import org.apache.logging.log4j.LogManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.yc.vote01.entity.Item;
import com.yc.vote01.entity.OptionBean;
import com.yc.vote01.entity.Subject;
import com.yc.vote01.entity.SubjectBean;
import com.yc.vote01.entity.VoteBean;
import com.yc.vote01.mapper.SubjectMapper;
import com.yc.vote01.service.VoteService;

@Service("voteService")
public class VoteServiceImpl implements VoteService{
	
	@Autowired
	private SubjectMapper subjectMapper;
	
	@Override
	public List<Subject> findAllSubjects() {
	
		return subjectMapper.getAllSubjects();
	
	}

	@Override
	public List<SubjectBean> findAllSubjectBeans() {
		
		return subjectMapper.getAllSubjectBeans();
	}

	@Override
	public OptionBean findOptionsByVsId(int vsId) {

		return subjectMapper.getOptionsByVsId(vsId);
	}

	@Override
	public VoteBean findVoteBeanByVsId(int vsId) {
		
		return subjectMapper.getVoteBeanByVsId(vsId);
	}
	
	@Override @Transactional(propagation=Propagation.REQUIRED)
	public boolean saveVote(Item item){		
		try {
			subjectMapper.insertItem(item);
			return true;
		} catch (Exception e) {
			LogManager.getLogger().error("投票失败",e);
			throw new RuntimeException("投票失败",e);
		}	
		
	}
	@Override @Transactional(propagation=Propagation.REQUIRED)
	public boolean saveVote(Item item, String[] voId) {
		
		if(voId.length>1){
			for (String v : voId) {
				item.setVoId(Integer.parseInt(v));
				if(!saveVote(item)){
					return false;
				}
			}
			return true;
		}
		return saveVote(item);
	}
}

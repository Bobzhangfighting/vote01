package com.yc.vote01.service;

import java.util.List;

import com.yc.vote01.entity.Item;
import com.yc.vote01.entity.OptionBean;
import com.yc.vote01.entity.Subject;
import com.yc.vote01.entity.SubjectBean;
import com.yc.vote01.entity.VoteBean;

public interface VoteService {
	
	List<Subject> findAllSubjects();
	
	List<SubjectBean> findAllSubjectBeans();
	
	OptionBean findOptionsByVsId(int vsId);

	VoteBean findVoteBeanByVsId(int vsId);

	boolean saveVote(Item item);

	boolean saveVote(Item item, String[] voId);
}

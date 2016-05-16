package com.yc.vote01.mapper;

import java.util.List;

import com.yc.vote01.entity.AddSubjectBean;
import com.yc.vote01.entity.Item;
import com.yc.vote01.entity.Option;
import com.yc.vote01.entity.OptionBean;
import com.yc.vote01.entity.Subject;
import com.yc.vote01.entity.SubjectBean;
import com.yc.vote01.entity.VoteBean;

public interface SubjectMapper {

	List<Subject> getAllSubjects();
	
	List<SubjectBean> getAllSubjectBeans();
	
	OptionBean getOptionsByVsId(int vsId);

	VoteBean getVoteBeanByVsId(int vsId);

	void insertItem(Item item);

	void insertSubject(AddSubjectBean addSubjectBean);

	void insertOption(Option option);
}
package com.yc.vote01.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.vote01.entity.AddSubjectBean;
import com.yc.vote01.entity.Option;
import com.yc.vote01.mapper.SubjectMapper;
import com.yc.vote01.service.SubjectService;

@Service("subjectService")
public class SubjectServiceImpl implements SubjectService{

	@Autowired
	private SubjectMapper subjectMapper;
	
	@Override
	public AddSubjectBean addSubject(AddSubjectBean addSubjectBean){
		subjectMapper.insertSubject(addSubjectBean);
		return addSubjectBean;
		
	}
	
	@Override
	public void addOption(Option option){
	subjectMapper.insertOption(option);
	
	}
	
	@Override
	public void add(AddSubjectBean addSubjectBean){
		//1.插入subject
		addSubjectBean = addSubject(addSubjectBean);
		
		//2.插入所有option
		List<String> options = addSubjectBean.getOptions();
		for (int i = 0; i < options.size(); i++) {
			Option option = new Option(options.get(i),addSubjectBean.getVsId(),i+1);
			addOption(option);
		}
	}
}

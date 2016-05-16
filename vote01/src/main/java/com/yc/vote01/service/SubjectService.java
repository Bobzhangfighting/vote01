package com.yc.vote01.service;

import com.yc.vote01.entity.AddSubjectBean;
import com.yc.vote01.entity.Option;

public interface SubjectService {

	AddSubjectBean addSubject(AddSubjectBean addSubjectBean);

	void addOption( Option option);

	void add(AddSubjectBean addSubjectBean);

}

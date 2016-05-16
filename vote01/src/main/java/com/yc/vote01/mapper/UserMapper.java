package com.yc.vote01.mapper;

import com.yc.vote01.entity.User;

public interface UserMapper {


	User getUserByUser(User user);
	
	int insertUserByUser(User user);

	int updateStatus(String email);
}
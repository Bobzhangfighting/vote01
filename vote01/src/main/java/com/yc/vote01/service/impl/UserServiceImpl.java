package com.yc.vote01.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



import com.yc.vote01.entity.User;
import com.yc.vote01.mapper.UserMapper;
import com.yc.vote01.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper userMapper;
	@Override
	public User login(User user) {
		
		return userMapper.getUserByUser(user);
	}
	@Override
	public int register(User user) {

		return userMapper.insertUserByUser(user);
	}
	@Override
	public int updateStatus(String email) {
		System.out.println(email);
		return userMapper.updateStatus(email);
	}

}

package com.yc.vote01.service;

import com.yc.vote01.entity.User;

public interface UserService {

	User login(User user);

	int register(User user);

	int updateStatus(String email);
}

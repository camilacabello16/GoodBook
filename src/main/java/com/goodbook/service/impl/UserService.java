package com.goodbook.service.impl;

import javax.inject.Inject;

import com.goodbook.dao.IUserDao;
import com.goodbook.model.UserModel;
import com.goodbook.service.IUserService;

public class UserService implements IUserService {
	
	@Inject
	private IUserDao userDao;

	@Override
	public UserModel findByUserNameAndPassword(String userName, String password) {
		return userDao.findByUserNameAndPassword(userName, password);
	}

}

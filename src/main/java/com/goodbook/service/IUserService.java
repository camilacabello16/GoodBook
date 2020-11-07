package com.goodbook.service;

import com.goodbook.model.UserModel;

public interface IUserService {
	UserModel findByUserNameAndPassword(String userName, String password);
}

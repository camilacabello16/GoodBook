package com.goodbook.dao;

import com.goodbook.model.UserModel;

public interface IUserDao extends GenericDao<UserModel> {
	UserModel findByUserNameAndPassword(String userName, String password);
}

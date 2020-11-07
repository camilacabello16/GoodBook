package com.goodbook.dao.impl;

import java.util.List;

import com.goodbook.dao.IUserDao;
import com.goodbook.mapper.UserMapper;
import com.goodbook.model.UserModel;

public class UserDao extends AbstractDao<UserModel> implements IUserDao {

	@Override
	public UserModel findByUserNameAndPassword(String userName, String password) {
		String sql = "SELECT * FROM user INNER JOIN role ON role.id = user.roleid WHERE username = ? AND password = ?";
		List<UserModel> user = query(sql, new UserMapper(), userName, password);
		return user.isEmpty() ? null : user.get(0);
	}

}

package com.goodbook.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.goodbook.model.RoleModel;
import com.goodbook.model.UserModel;

public class UserMapper implements RowMapper<UserModel> {

	@Override
	public UserModel mapRow(ResultSet resultSet) {
		try {
			UserModel user = new UserModel();
			user.setId(resultSet.getLong("id"));
			user.setUserName(resultSet.getString("username"));
			user.setPassword(resultSet.getString("password"));
			user.setFullName(resultSet.getString("fullname"));
			user.setRoleId(resultSet.getLong("roleid"));
			try {
				RoleModel role = new RoleModel();
				role.setCode(resultSet.getString("code"));
				role.setName(resultSet.getString("name"));
				user.setRole(role);
			}catch(Exception e) {
				System.out.print(e.getMessage());
			}
			return user;
		}catch(SQLException e) {
			return null;
		}
	}

}

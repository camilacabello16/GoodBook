package com.goodbook.dao.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.goodbook.dao.ICategoryDao;
import com.goodbook.mapper.CategoryMapper;
import com.goodbook.model.CategoryModel;

public class CategoryDao extends AbstractDao<CategoryModel> implements ICategoryDao {

	@Override
	public List<CategoryModel> findAll() {
		String sql = "SELECT * FROM category";
		return query(sql, new CategoryMapper());
	}

	@Override
	public String findNameCate(Long id) {
		String sql = "SELECT category.categoryname FROM book JOIN category ON book.categoryid = category.categoryid WHERE category.categoryid = 2";
		String name = "";
		Connection connection = null;
		PreparedStatement statement = null;
		ResultSet resultSet = null;
		try {
			connection = getConnection();
			statement = connection.prepareStatement(sql);
			statement.setLong(1, id);
			resultSet = statement.executeQuery();
			if (resultSet.next()) {
				name = resultSet.getString(2);
			}
			return name;
		}catch(SQLException e) {
			e.printStackTrace();
			return null;
		}finally {
			try {
				if (connection != null) {
					connection.close();
				}
				if (statement != null) {
					statement.close();
				}
				if (resultSet != null) {
					resultSet.close();
				}
			} catch (SQLException e) {
				return null;
			}
		}
	}

	@Override
	public CategoryModel findOne(long id) {
		String sql = "SELECT * FROM category WHERE id = ?";
		List<CategoryModel> category = query(sql, new CategoryMapper(), id);
		return category.isEmpty() ? null : category.get(0);
	}

	@Override
	public CategoryModel findByCode(String code) {
		String sql = "SELECT * FROM category WHERE categorycode = ?";
		List<CategoryModel> category = query(sql, new CategoryMapper(), code);
		return category.isEmpty() ? null : category.get(0);
	}

}

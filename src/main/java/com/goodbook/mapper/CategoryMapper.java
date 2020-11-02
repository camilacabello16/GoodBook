package com.goodbook.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.goodbook.model.CategoryModel;

public class CategoryMapper implements RowMapper<CategoryModel> {

	@Override
	public CategoryModel mapRow(ResultSet resultSet) {
		try {
			CategoryModel category = new CategoryModel();
			category.setId(resultSet.getLong("id"));
			category.setCategoryName(resultSet.getString("categoryname"));
			category.setCategoryId(resultSet.getLong("categoryid"));
			category.setCategoryCode(resultSet.getString("categorycode"));
			return category;
		}catch(SQLException e) {
			return null;
		}
	}

}

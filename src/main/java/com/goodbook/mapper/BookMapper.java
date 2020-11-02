package com.goodbook.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.goodbook.model.BookModel;

public class BookMapper implements RowMapper<BookModel> {

	@Override
	public BookModel mapRow(ResultSet resultSet) {
		try {
			BookModel book = new BookModel();
			book.setId(resultSet.getLong("id"));
			book.setName(resultSet.getString("name"));
			book.setCategoryId(resultSet.getLong("categoryid"));
			book.setDescription(resultSet.getString("description"));
			book.setImage(resultSet.getString("image"));
			book.setRating(resultSet.getInt("rating"));
			book.setAuthorId(resultSet.getLong("authorid"));
			return book;
		} catch(SQLException e) {
			return null;
		}
		
	}

}

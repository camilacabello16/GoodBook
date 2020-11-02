package com.goodbook.dao;

import java.util.List;

import com.goodbook.mapper.RowMapper;

public interface GenericDao<T> {
	<T> List<T> query(String sql, RowMapper<T> rowMapper, Object... parameters);
	//update or delete
	void update(String sql, Object... parameters);
	//add
	Long insert(String sql, Object... parameters);
}

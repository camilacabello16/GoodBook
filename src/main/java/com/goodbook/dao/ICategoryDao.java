package com.goodbook.dao;

import java.util.List;

import com.goodbook.model.CategoryModel;

public interface ICategoryDao extends GenericDao<CategoryModel> {
	List<CategoryModel> findAll();
	String findNameCate(Long id);
	CategoryModel findOne(long id);
	CategoryModel findByCode(String code);
}

package com.goodbook.service;

import java.util.List;

import com.goodbook.model.CategoryModel;

public interface ICategoryService {
	List<CategoryModel> findAll();
	String findNameCate(Long id);
}

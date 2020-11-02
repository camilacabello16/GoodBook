package com.goodbook.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.goodbook.dao.ICategoryDao;
import com.goodbook.model.CategoryModel;
import com.goodbook.service.ICategoryService;

public class CategoryService implements ICategoryService {

	@Inject
	private ICategoryDao categoryDao;
	
	@Override
	public List<CategoryModel> findAll() {
		return categoryDao.findAll();
	}

	@Override
	public String findNameCate(Long id) {
		return categoryDao.findNameCate(id);
	}

}

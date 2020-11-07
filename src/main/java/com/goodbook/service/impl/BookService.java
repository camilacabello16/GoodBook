package com.goodbook.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.goodbook.dao.IBookDao;
import com.goodbook.dao.ICategoryDao;
import com.goodbook.model.BookModel;
import com.goodbook.model.CategoryModel;
import com.goodbook.service.IBookService;

public class BookService implements IBookService {

	@Inject
	private IBookDao bookDao;
	
	@Inject
	private ICategoryDao categoryDao;

	@Override
	public List<BookModel> findByCategoryId(Long categoryId) {
		return bookDao.findByCategoryId(categoryId);
	}

	@Override
	public BookModel save(BookModel bookModel) {
		CategoryModel category = categoryDao.findByCode(bookModel.getCategoryCode());
		bookModel.setCategoryId(category.getId());
		Long bookId = bookDao.save(bookModel);
		return bookDao.findOne(bookId);
	}

	@Override
	public BookModel update(BookModel updateBook) {
		// BookModel oldBook = bookDao.findOne(updateBook.getId());
		CategoryModel category = categoryDao.findByCode(updateBook.getCategoryCode());
		updateBook.setCategoryId(category.getId());
		bookDao.update(updateBook);
		return bookDao.findOne(updateBook.getId());
	}

	@Override
	public void delete(long[] ids) {
		for (long id : ids) {
			bookDao.delete(id);
		}
	}

	@Override
	public List<BookModel> findAll() {
		return bookDao.findAll();
	}

	@Override
	public BookModel findOne(Long id) {
		BookModel bookModel = bookDao.findOne(id);
		CategoryModel categoryModel = categoryDao.findOne(bookModel.getCategoryId());
		bookModel.setCategoryCode(categoryModel.getCategoryCode());
		return bookModel;
	}

	@Override
	public List<BookModel> findBook(String nameFind) {
		return bookDao.findBook(nameFind);
	}


}

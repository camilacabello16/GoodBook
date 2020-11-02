package com.goodbook.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.goodbook.dao.IBookDao;
import com.goodbook.model.BookModel;
import com.goodbook.service.IBookService;

public class BookService implements IBookService {

	@Inject
	private IBookDao bookDao;

	@Override
	public List<BookModel> findByCategoryId(Long categoryId) {
		return bookDao.findByCategoryId(categoryId);
	}

	@Override
	public BookModel save(BookModel bookModel) {
		Long bookId = bookDao.save(bookModel);
		return bookDao.findOne(bookId);
	}

	@Override
	public BookModel update(BookModel updateBook) {
		// BookModel oldBook = bookDao.findOne(updateBook.getId());
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

}

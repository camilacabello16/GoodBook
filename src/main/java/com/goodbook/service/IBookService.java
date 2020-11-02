package com.goodbook.service;

import java.util.List;

import com.goodbook.model.BookModel;

public interface IBookService {
	List<BookModel> findByCategoryId(Long categoryId);
	BookModel save(BookModel bookModel);
	BookModel update(BookModel updateBook);
	void delete(long[] ids);
	List<BookModel> findAll();
}

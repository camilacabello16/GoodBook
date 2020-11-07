package com.goodbook.dao;

import java.util.List;

import com.goodbook.model.BookModel;

public interface IBookDao extends GenericDao<BookModel> {
	List<BookModel> findByCategoryId(Long categoryId);

	Long save(BookModel bookModel);

	BookModel findOne(Long id);

	void update(BookModel updateBook);

	void delete(long id);

	List<BookModel> findAll();

	List<BookModel> findBook(String nameFind);
}

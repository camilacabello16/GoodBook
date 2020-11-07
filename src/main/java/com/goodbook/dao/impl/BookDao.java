package com.goodbook.dao.impl;

import java.util.List;

import com.goodbook.dao.IBookDao;
import com.goodbook.mapper.BookMapper;
import com.goodbook.model.BookModel;

public class BookDao extends AbstractDao<BookModel> implements IBookDao {

	@Override
	public List<BookModel> findByCategoryId(Long categoryId) {
		String sql = "SELECT * FROM book WHERE categoryid = ?";
		return query(sql, new BookMapper(), categoryId);
	}

	@Override
	public Long save(BookModel bookModel) {
		String sql = "INSERT INTO book (name, categoryid, description, image, rating, authorid) VALUES(?,?,?,?,?,?)";
		return insert(sql, bookModel.getName(), bookModel.getCategoryId(), bookModel.getDescription(),
				bookModel.getImage(), bookModel.getRating(), bookModel.getAuthorId());
	}

	@Override
	public BookModel findOne(Long id) {
		String sql = "SELECT * FROM book WHERE id = ?";
		List<BookModel> books = query(sql, new BookMapper(), id);
		return books.isEmpty() ? null : books.get(0);
	}

	@Override
	public void update(BookModel updateBook) {
		String sql = "UPDATE book SET name = ?, categoryid = ?, description = ?, image = ?, rating = ?, authorid = ? WHERE id = ?";
		update(sql, updateBook.getName(), updateBook.getCategoryId(), updateBook.getDescription(),
				updateBook.getImage(), updateBook.getRating(), updateBook.getAuthorId(), updateBook.getId());
	}

	@Override
	public void delete(long id) {
		String sql = "DELETE FROM book WHERE id = ?";
		update(sql, id);
	}

	@Override
	public List<BookModel> findAll() {
		String sql = "select * from find_all_book";
		return query(sql, new BookMapper());
	}

	@Override
	public List<BookModel> findBook(String nameFind) {
		String sql = "SELECT * FROM book WHERE name LIKE '%?%'";
		return query(sql, new BookMapper(), nameFind);
	}

}

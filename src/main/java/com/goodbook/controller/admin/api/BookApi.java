package com.goodbook.controller.admin.api;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.goodbook.model.BookModel;
import com.goodbook.service.IBookService;
import com.goodbook.utils.HttpUtil;

@WebServlet(urlPatterns = {"/api-admin-book"})
public class BookApi extends HttpServlet {

	private static final long serialVersionUID = 5765328454860858848L;
	
	@Inject
	private IBookService bookService;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		BookModel bookModel = HttpUtil.of(req.getReader()).toModel(BookModel.class);
		bookModel = bookService.save(bookModel);
		mapper.writeValue(resp.getOutputStream(), bookModel);
	}
	
	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		BookModel updateBook = HttpUtil.of(req.getReader()).toModel(BookModel.class);
		updateBook = bookService.update(updateBook);
		mapper.writeValue(resp.getOutputStream(), updateBook);
	}
	
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		ObjectMapper mapper = new ObjectMapper();
		req.setCharacterEncoding("UTF-8");
		resp.setContentType("application/json");
		BookModel bookModel = HttpUtil.of(req.getReader()).toModel(BookModel.class);
		bookService.delete(bookModel.getIds());
		mapper.writeValue(resp.getOutputStream(), "{}");
	}
}

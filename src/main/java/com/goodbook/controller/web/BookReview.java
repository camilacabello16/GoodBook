package com.goodbook.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodbook.model.BookModel;
import com.goodbook.model.CategoryModel;
import com.goodbook.service.IBookService;
import com.goodbook.service.ICategoryService;
import com.goodbook.utils.FormUtil;

@WebServlet(urlPatterns = {"/trang-gioi-thieu"})
public class BookReview extends HttpServlet {

	private static final long serialVersionUID = 7886222635760052912L;
	
	@Inject
	private IBookService bookService;
	
	@Inject
	private ICategoryService categoryService;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String strBookId = req.getParameter("id");
		long bookId = Long.parseLong(strBookId);
		BookModel bookModel = FormUtil.toModel(BookModel.class, req);
		bookModel = bookService.findOne(bookId);
		req.setAttribute("bookItem", bookModel);
		
		RequestDispatcher rd = req.getRequestDispatcher("/views/web/bookreview.jsp");
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}

}

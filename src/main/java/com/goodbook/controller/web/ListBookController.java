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

@WebServlet(urlPatterns = {"/danh-sach"})
public class ListBookController extends HttpServlet {

	private static final long serialVersionUID = -8097893400275330536L;
	
	@Inject
	private ICategoryService categoryService;
	
	@Inject
	private IBookService bookService;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BookModel bookModel = new BookModel();
		CategoryModel cateModel = new CategoryModel();
		bookModel.setListResult(bookService.findAll());
		req.setAttribute("books", bookModel);
		
		cateModel.setListResult(categoryService.findAll());
		req.setAttribute("categories", cateModel);
		RequestDispatcher rd = req.getRequestDispatcher("/views/web/listbook.jsp");
		rd.forward(req, resp);
	}
	
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

}

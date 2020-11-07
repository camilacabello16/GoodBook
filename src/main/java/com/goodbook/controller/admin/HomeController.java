package com.goodbook.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.goodbook.model.BookModel;
import com.goodbook.service.IBookService;
import com.goodbook.service.ICategoryService;
import com.goodbook.utils.FormUtil;

@WebServlet(urlPatterns = {"/admin-home"})
public class HomeController extends HttpServlet {

	private static final long serialVersionUID = -1309961578903769876L;
	
	@Inject
	private IBookService bookService;
	
	@Inject
	private ICategoryService categoryService;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//BookModel bookModel = new BookModel();
		BookModel bookModel = FormUtil.toModel(BookModel.class, req);
		String view = "";
		String type = req.getParameter("type");
		if(type != null && type.equals("edit")) {
			bookModel.setType("edit");
		}
		if(bookModel.getType().equals("list")) {
			bookModel.setListResult(bookService.findAll());
			//bookModel.setCateName(categoryService.findNameCate(bookModel.getCategoryId()));
			view = "/views/admin/home.jsp";
		} 
		else if(bookModel.getType().equals("edit")) {
			if(bookModel.getId() != null) {
				bookModel = bookService.findOne(bookModel.getId());
			}else {
				
			}
			req.setAttribute("categories", categoryService.findAll());
			view = "/views/admin/edit.jsp";
		}
		req.setAttribute("books", bookModel);
		RequestDispatcher rd = req.getRequestDispatcher(view);
		rd.forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}

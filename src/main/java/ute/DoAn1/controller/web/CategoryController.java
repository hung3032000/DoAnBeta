package ute.DoAn1.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.model.CategoriesModel;
import ute.DoAn1.service.ICategoriesService;

/**
 * Servlet implementation class CategoryController
 */
@WebServlet(urlPatterns = { "/user-category" })
public class CategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	@Inject
	private ICategoriesService Icategory;
	public CategoryController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CategoriesModel category = new CategoriesModel();
		category.setListResult(Icategory.findAllP());
		request.setAttribute("category", category);
		
		String parent_id = request.getParameter("parent_id");
		//load child category
		CategoriesModel categoryC = new CategoriesModel();
		categoryC.setListResult(Icategory.findAllC(parent_id));
		request.setAttribute("categoryC", categoryC);
		request.setAttribute("parent_id", parent_id);
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/categorychild.jsp");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

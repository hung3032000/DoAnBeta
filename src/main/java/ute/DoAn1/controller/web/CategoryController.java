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
import ute.DoAn1.utils.FormUtil;

/**
 * Servlet implementation class CategoryController
 */
@WebServlet(urlPatterns = { "/user-category" })
public class CategoryController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private ICategoriesService Icategory;
	/**
	 * @see HttpServlet#HttpServlet()
	 */

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
		//load categoryC
		CategoriesModel category = FormUtil.toModel(CategoriesModel.class, request);
		category.setListResult(Icategory.findAllP());
		request.setAttribute("category", category);
		
		String parent_id = request.getParameter("parent_id");
		//load child category
		CategoriesModel categoryC = FormUtil.toModel(CategoriesModel.class, request);
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

package ute.DoAn1.controller.admin;

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
 * Servlet implementation class ACategoryController
 */
@WebServlet(urlPatterns = { "/admin-CategoryNew" })
public class ACategoryNewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private ICategoriesService Icategory;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ACategoryNewController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CategoriesModel category = FormUtil.toModel(CategoriesModel.class, request);
		category.setListResult(Icategory.findAll());
		request.setAttribute("category", category);
		String action = request.getParameter("action");
		/*
		 * if (action != null && action.equals("new")) {
		 * 
		 * RequestDispatcher rd =
		 * request.getRequestDispatcher("/views/admin/new/editCategory.jsp");
		 * rd.forward(request, response); } else
		 * 
		 * {
		 */
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editCategory.jsp");
			rd.forward(request, response);
			/* } */
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String categoryName = request.getParameter("categoryName");
		String title = request.getParameter("title");
		String image = request.getParameter("outputfile");

		response.sendRedirect(
				request.getContextPath() + "/admin-CategoryNew");
	}

}

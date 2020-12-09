package ute.DoAn1.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.constant.SystemConstant;
import ute.DoAn1.model.CategoriesModel;
import ute.DoAn1.model.ProductModel;
import ute.DoAn1.service.ICategoriesService;
import ute.DoAn1.service.IProductService;

/**
 * Servlet implementation class ProductController
 */
@WebServlet(urlPatterns = { "/user-product","/user-loadcategories" })
public class ProductController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	@Inject
	private ICategoriesService Icategory;
	@Inject
	private IProductService Iproduct;

	public ProductController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Tra ve toan bo danh muc
		//doPost(request, response);
		CategoriesModel category = new CategoriesModel();
		category.setListResult(Icategory.findAllP());
		request.setAttribute("category", category);
		// Tra ve toan bo san pham

		ProductModel product = new ProductModel();
		product.setListResult(Iproduct.findAll());
		request.setAttribute(SystemConstant.MODEL, product);
		// trả về tổng số hàng
		int totalItems = 0;
		totalItems = totalItems + product.getListResult().size();

		request.setAttribute("totalItems", totalItems);
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/showproduct.jsp");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");
		if (action != null && action.equals("Women")) {
			
		}
		response.sendRedirect(
				request.getContextPath() + "/user-product");
	}

}
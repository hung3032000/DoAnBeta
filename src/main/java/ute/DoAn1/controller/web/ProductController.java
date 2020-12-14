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
@WebServlet(urlPatterns = { "/user-product" })
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
		CategoriesModel category = new CategoriesModel();
		category.setListResult(Icategory.findAllP());
		request.setAttribute("category", category);
		//danh muc con
		String parent_id = request.getParameter("parent_id");
		//load child category
		CategoriesModel categoryC = new CategoriesModel();
		categoryC.setListResult(Icategory.findAllC(parent_id));
		request.setAttribute("categoryC", categoryC);
		//Luu ten danh muc con
		String categoryName = request.getParameter("categoryName");
		request.setAttribute("cateName", categoryName);
		
		
		String productChild = request.getParameter("categoryChild");
		request.setAttribute("cateC", productChild);

		//phaan trang
		ProductModel product = new ProductModel();
		String pageStr = request.getParameter("page");
		String maxPageItemStr = request.getParameter("maxPageItem");
		if (pageStr != null) {
			product.setPage(Integer.parseInt(pageStr));
		}
		else {
			product.setPage(1);
		}
		if (maxPageItemStr != null) {
			product.setMaxPageItem(Integer.parseInt(maxPageItemStr));
		}
		Integer offset = (product.getPage()-1 )*product.getMaxPageItem();
		// Tra ve toan bo san pham
		product.setListResult(Iproduct.findAllC(productChild,offset,product.getMaxPageItem()));
		product.setTotalItem(Iproduct.getTotalItem(productChild));
		product.setTotalPage((int) Math.ceil((double) product.getTotalItem() / product.getMaxPageItem()));
		// trả về tổng số hàng
		int totalItems = 0;
		totalItems = totalItems + product.getListResult().size();
		request.setAttribute("totalItems", totalItems);
		request.setAttribute(SystemConstant.MODEL, product);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/showproduct.jsp");
		rd.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	}

}

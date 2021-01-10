package ute.DoAn1.controller.admin;

import java.io.IOException;
import java.util.ResourceBundle;

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
import ute.DoAn1.utils.FormUtil;

/**
 * Servlet implementation class AProductNewController
 */
@WebServlet(urlPatterns = { "/admin-ProductNew" })
public class AProductNewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private ICategoriesService Icategory;
	@Inject
	private IProductService Iproduct;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AProductNewController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	ResourceBundle resourceBundle = ResourceBundle.getBundle("message");

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		CategoriesModel category = FormUtil.toModel(CategoriesModel.class, request);
		category.setListResult(Icategory.findAllP());
		request.setAttribute("category", category);
		CategoriesModel category2 = FormUtil.toModel(CategoriesModel.class, request);
		category2.setListResult(Icategory.findAllPandC());
		request.setAttribute("categoryC", category2);
		String action = request.getParameter("action");

		if (action != null && action.equals("new")) {
			String alert = request.getParameter("alert");
			String message = request.getParameter("message");
			String message2 = request.getParameter("message2");
			String ready = request.getParameter("ready");
			if (message != null && alert != null && ready == null) {
				request.setAttribute("message", resourceBundle.getString(message));
				request.setAttribute("alert", alert);
				RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editProduct.jsp");
				rd.forward(request, response);
			}
			if (message2 != null && alert == null && ready != null && ready.equals("success")) {
				request.setAttribute("message2", resourceBundle.getString(message2));
				request.setAttribute("ready", ready);
				response.sendRedirect(request.getContextPath() + "/admin-Product");

			}

		} else if (action != null && action.equals("detail")) {
			Integer product_Id = Integer.parseInt(request.getParameter("productId"));
			ProductModel product = FormUtil.toModel(ProductModel.class, request);
			product = Iproduct.findOne(product_Id);
			request.setAttribute(SystemConstant.MODEL, product);

			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editProduct.jsp");
			rd.forward(request, response);

		} else if (action != null && action.equals("delete")) {

			Integer product_Id = Integer.parseInt(request.getParameter("productId"));

			ProductModel product = FormUtil.toModel(ProductModel.class, request);
			product = Iproduct.findOne(product_Id);
			Iproduct.delete(product);

			response.sendRedirect(request.getContextPath() + "/admin-Product");

		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editProduct.jsp");
			rd.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String productName = request.getParameter("productName");
		int productInt = Integer.parseInt(request.getParameter("productPrice"));
		String productSize = request.getParameter("productSize");
		String productColor = request.getParameter("productColor");
		int productQuantity = Integer.parseInt(request.getParameter("productQuantity"));
		String productOrigin = request.getParameter("productOrigine");
		String productShortDes = request.getParameter("productShortDes");
		String productContent = request.getParameter("productContent");
		String image = request.getParameter("outputfile");
		int status = Integer.parseInt(request.getParameter("status").trim());
		String action = request.getParameter("action");
		Integer categoryId = Integer.parseInt(request.getParameter("categoryId"));
		ProductModel product = FormUtil.toModel(ProductModel.class, request);

		if (action != null && action.equals("New product")) {
			product.setName(productName);
			product.setPrice(productInt);
			product.setSize(productSize);

			product.setColor(productColor);
			product.setQuantity(productQuantity);
			product.setOrigin(productOrigin);
			product.setShortdecription(productShortDes);
			product.setContent(productContent);
			product.setImage(image);
			product.setCategorie_id(categoryId);
			product.setStatus(status);
			product = Iproduct.save(product);

			if (product != null) {
				response.sendRedirect(
						request.getContextPath() + "/admin-Product?action=new&message2=category_new&ready=success");
			} else {
				response.sendRedirect(
						request.getContextPath() + "/admin-ProductNew?action=new&message=category_exist&alert=error");
			}
		}

		else if (action != null && action.equals("Edit product")) {
			Long id = Long.parseLong(request.getParameter("productid"));
			product.setId(id);
			if (image.equals("")) {
				product.setName(productName);
				product.setPrice(productInt);
				product.setSize(productSize);
				product.setColor(productColor);
				product.setQuantity(productQuantity);
				product.setOrigin(productOrigin);
				product.setShortdecription(productShortDes);
				product.setContent(productContent);
				product.setCategorie_id(categoryId);
				product.setStatus(status);
				Iproduct.updateStatus(product);
			} else {
				product.setName(productName);
				product.setPrice(productInt);
				product.setSize(productSize);

				product.setColor(productColor);
				product.setQuantity(productQuantity);
				product.setOrigin(productOrigin);
				product.setShortdecription(productShortDes);
				product.setContent(productContent);
				product.setImage(image);
				product.setCategorie_id(categoryId);
				product.setStatus(status);
				Iproduct.update(product);
			}

			response.sendRedirect(
					request.getContextPath() + "/admin-ProductNew?action=new&message2=category_new&ready=success");
		}

		else {
			response.sendRedirect(request.getContextPath() + "/admin-ProductNew");
		}

	}

}

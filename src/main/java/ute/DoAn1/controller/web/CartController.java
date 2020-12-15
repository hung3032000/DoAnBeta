package ute.DoAn1.controller.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.model.CategoriesModel;
import ute.DoAn1.model.ItemsModel;
import ute.DoAn1.model.OrderModel;
import ute.DoAn1.model.ProductImageModel;
import ute.DoAn1.model.ProductModel;
import ute.DoAn1.service.ICategoriesService;
import ute.DoAn1.service.IProductImageService;
import ute.DoAn1.service.IProductService;
import ute.DoAn1.utils.FormUtil;
import ute.DoAn1.utils.SessionUtil;

/**
 * Servlet implementation class CartController
 */
@WebServlet(urlPatterns = { "/user-cart" })
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private ICategoriesService Icategory;
	@Inject
	private IProductService Iproduct;
	@Inject
	private IProductImageService IproductI;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartController() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Tra ve toan bo danh muc
		CategoriesModel category = FormUtil.toModel(CategoriesModel.class, request);
		category.setListResult(Icategory.findAllP());
		request.setAttribute("category", category);
		String action = "deleteCart";
		// request.getParameter("action");

		// load toan bo san pham
		String product_id = request.getParameter("product_id");
		ProductModel product = FormUtil.toModel(ProductModel.class, request);
		product = Iproduct.findOne(product_id);
		request.setAttribute("item", product);
		// load thong tin anh cua 1 product
		ProductImageModel productI = FormUtil.toModel(ProductImageModel.class, request);
		productI.setListResult(IproductI.findAll(product_id));
		request.setAttribute("image", productI);

		// lest go
		int quantity = 1;

		request.setAttribute("product_id", product_id);
		/* if (action != null && action.equals("updateCart")) { */
		if (product_id != null) {

			if (product != null) {
				if (SessionUtil.getInstance().getValue(request, "order") == null) {
					OrderModel order = FormUtil.toModel(OrderModel.class, request);
					ItemsModel item = FormUtil.toModel(ItemsModel.class, request);
					item.setQuantity(quantity);
					item.setProduct(product);
					item.setPrice(product.getPrice());
					item.getListResult().add(item);
					order.getListResult().add(item);

					SessionUtil.getInstance().putValue(request, "order", order);
				} else {
					OrderModel order = (OrderModel) SessionUtil.getInstance().getValue(request, "order");
					List<ItemsModel> listItems = order.getListResult();
					boolean check = false;
					for (ItemsModel item : listItems) {
						if (item.getProduct().getId() == product.getId()) {
							item.setQuantity(item.getQuantity() + quantity);
							check = true;
						}
					}
					if (check == false) {
						ItemsModel item = FormUtil.toModel(ItemsModel.class, request);
						item.setQuantity(quantity);
						item.setProduct(product);
						item.setPrice(product.getPrice());
						listItems.add(item);
					}
					SessionUtil.getInstance().putValue(request, "order", order);
				}

			} else {
				response.sendRedirect(request.getContextPath() + "/user-cart");
			}
		} else {
			response.sendRedirect(request.getContextPath() + "/user-cart");
		}
		/*
		 * } else if (action != null && action.equals("deleteCart")){
		 * SessionUtil.getInstance().removeValue(request, "order");
		 * response.sendRedirect(request.getContextPath() + "/user-cart"); }
		 */

		RequestDispatcher rd = request.getRequestDispatcher("/views/web/productin4.jsp");
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

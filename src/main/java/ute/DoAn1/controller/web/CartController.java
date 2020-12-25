package ute.DoAn1.controller.web;

import java.io.IOException;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.model.CartModel;
import ute.DoAn1.model.CategoriesModel;
import ute.DoAn1.model.OrderItemsModel;
import ute.DoAn1.model.ProductModel;
import ute.DoAn1.service.ICategoriesService;
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

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CartController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		RequestDispatcher rd = request.getRequestDispatcher("/views/web/usercart.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// Tra ve toan bo danh muc
		CategoriesModel category = FormUtil.toModel(CategoriesModel.class, request);
		category.setListResult(Icategory.findAllP());
		request.setAttribute("category", category);
		String AddorRemove = request.getParameter("Quantity");
		int quantity = 1;
		int totalProduct = 0;
		long totalPrice = 0;
		// load toan bo san pham
		String product_id = request.getParameter("product_id");
		request.setAttribute("product_id", product_id);
		ProductModel product = FormUtil.toModel(ProductModel.class, request);
		product = Iproduct.findOne(product_id);

		if (AddorRemove != null && AddorRemove.equals("+")) {
			CartModel order = (CartModel) SessionUtil.getInstance().getValue(request, "order");
			List<OrderItemsModel> listItems = order.getListResult();

			for (OrderItemsModel item : listItems) {
				if (item.getProduct().getId() == product.getId()) {
					item.setQuantity(item.getQuantity() + quantity);

				}
			}
			for (OrderItemsModel item : listItems) {
				totalProduct += item.getQuantity();
				totalPrice += item.getTotalPrice() * item.getQuantity();
			}
			order.setTotalPrice(totalPrice);
			order.setTotalProduct(totalProduct);

			SessionUtil.getInstance().putValue(request, "order", order);
		} 
		
		else if(AddorRemove != null && AddorRemove.equals("-")){
			CartModel order = (CartModel) SessionUtil.getInstance().getValue(request, "order");
			List<OrderItemsModel> listItems = order.getListResult();

			for (OrderItemsModel item : listItems) {
				if (item.getProduct().getId() == product.getId()) {
					item.setQuantity(item.getQuantity() - quantity);

				}
			}
			for (OrderItemsModel item : listItems) {
				totalProduct += item.getQuantity();
				totalPrice += item.getTotalPrice() * item.getQuantity();
			}
			order.setTotalPrice(totalPrice);
			order.setTotalProduct(totalProduct);

			SessionUtil.getInstance().putValue(request, "order", order);
		}

		response.sendRedirect(request.getContextPath() + "/user-cart");
	}

}

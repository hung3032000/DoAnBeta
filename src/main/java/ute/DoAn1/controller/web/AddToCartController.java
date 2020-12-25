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
@WebServlet(urlPatterns = { "/user-addToCart" })
public class AddToCartController extends HttpServlet {
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
	public AddToCartController() {
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
		// load toan bo san pham
		String product_id = request.getParameter("product_id");
		ProductModel product = FormUtil.toModel(ProductModel.class, request);
		product = Iproduct.findOne(product_id);
		request.setAttribute("item", product);
		// load thong tin anh cua 1 product
		ProductImageModel productI = FormUtil.toModel(ProductImageModel.class, request);
		productI.setListResult(IproductI.findAll(product_id));
		request.setAttribute("image", productI);
		// delete
		String page = request.getParameter("page");
		String action = request.getParameter("action");
		// addToCart
		int quantity = 1;
		int totalProduct = 0;
		long totalPrice = 0;
		request.setAttribute("product_id", product_id);
		if (product_id != null) {

			if (product != null) {

				if (action != null && action.equals("delete")) {
					CartModel order = (CartModel) SessionUtil.getInstance().getValue(request, "order");
					List<OrderItemsModel> listItems = order.getListResult();
					for (int i = 0; i < listItems.size(); i++) {
						if (listItems.get(i).getProduct().getId() == product.getId()) {
							listItems.remove(i);
						}
					}

					for (OrderItemsModel item : listItems) {
						totalProduct += item.getQuantity();
						totalPrice += item.getTotalPrice() * item.getQuantity();
					}
					order.setListResult(listItems);
					order.setTotalPrice(totalPrice);
					order.setTotalProduct(totalProduct);
					if (order.getListResult().size() != 0) {
						SessionUtil.getInstance().putValue(request, "order", order);
					} else {
						SessionUtil.getInstance().removeValue(request, "order");
					}
				} else {
					if (SessionUtil.getInstance().getValue(request, "order") == null) {

						CartModel order = FormUtil.toModel(CartModel.class, request);
						OrderItemsModel item = FormUtil.toModel(OrderItemsModel.class, request);

						order.setTotalProduct(1);
						item.setQuantity(quantity);
						item.setProduct(product);
						item.setTotalPrice(product.getPrice());
						totalPrice = item.getTotalPrice() * item.getQuantity();

						order.setTotalPrice(totalPrice);
						item.getListResult().add(item);
						order.getListResult().add(item);

						SessionUtil.getInstance().putValue(request, "order", order);
					} else {
						CartModel order = (CartModel) SessionUtil.getInstance().getValue(request, "order");
						List<OrderItemsModel> listItems = order.getListResult();

						boolean check = false;
						for (OrderItemsModel item : listItems) {
							if (item.getProduct().getId() == product.getId()) {
								item.setQuantity(item.getQuantity() + quantity);

								check = true;
							}
						}
						if (check == false) {
							OrderItemsModel item = FormUtil.toModel(OrderItemsModel.class, request);
							item.setQuantity(quantity);
							item.setProduct(product);
							item.setTotalPrice(product.getPrice());

							listItems.add(item);

						}
						for (OrderItemsModel item : listItems) {
							totalProduct += item.getQuantity();
							totalPrice += item.getTotalPrice() * item.getQuantity();
						}
						order.setTotalPrice(totalPrice);
						order.setTotalProduct(totalProduct);

						SessionUtil.getInstance().putValue(request, "order", order);
					}

				}

			}

		}
		if (page != null && page.equals("usercart")) {
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/usercart.jsp");
			rd.forward(request, response);
		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/views/web/productin4.jsp");
			rd.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

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
import ute.DoAn1.model.CustomerModel;
import ute.DoAn1.model.OrderItemsModel;
import ute.DoAn1.model.OrderModel;
import ute.DoAn1.service.ICategoriesService;
import ute.DoAn1.service.ICustomerService;
import ute.DoAn1.service.IOrderItemsService;
import ute.DoAn1.service.IOrderService;
import ute.DoAn1.utils.FormUtil;
import ute.DoAn1.utils.SessionUtil;

/**
 * Servlet implementation class CheckOutController
 */
@WebServlet(urlPatterns = { "/user-checkout" })
public class CheckOutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private ICategoriesService Icategory;
	@Inject
	private IOrderService Iorder;
	@Inject
	private IOrderItemsService IorderItems;
	@Inject
	private ICustomerService Icus;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckOutController() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// load category
		CategoriesModel category = FormUtil.toModel(CategoriesModel.class, request);
		category.setListResult(Icategory.findAllP());
		request.setAttribute("category", category);
		// láº¥y thÃ´ng tin
		String title = request.getParameter("cus_title");
		String fname = request.getParameter("cus_fname");
		String lname = request.getParameter("cus_lname");
		String address = request.getParameter("cus_address");
		String phone = request.getParameter("cus_phone");
		String totalPrice = request.getParameter("totalPrice");
		String userEmail = request.getParameter("user_email");
		CartModel cart = (CartModel) SessionUtil.getInstance().getValue(request, "order");
		List<OrderItemsModel> listOrderItems = cart.getListResult();
		// thÃ´ng tin cá»§a khÃ¡ch hÃ ng

		CustomerModel cus = FormUtil.toModel(CustomerModel.class, request);
		cus.setUser_email(userEmail);
		cus.setTitle(title);
		cus.setfName(fname);
		cus.setlName(lname);
		cus.setAddress(address);
		cus.setPhone(phone);
		cus = Icus.save(cus);
		long cus_id = cus.getId();
		request.setAttribute("cus", cus);
		// tao 1 order voi user name
		OrderModel order = FormUtil.toModel(OrderModel.class, request);
		order.setTotalprice(Long.parseLong(totalPrice));
		order.setUseremail(userEmail);
		order.setCustomerId(cus_id);
		order = Iorder.save(order);
		request.setAttribute("order2", order);
		long order_id = order.getId();

		// táº¡o 1 list orderItems thuá»™c order
		for (OrderItemsModel item : listOrderItems) {
			long product_id = item.getProduct().getId();
			item.setOrderId(order_id);
			item.setProductId(product_id);
			item.setTotalPrice(item.getQuantity()*item.getTotalPrice());
			item = IorderItems.save(item);
		}
		
		request.setAttribute("cart", cart);
		//mail ngay ddaay
		Iorder.sendMail(userEmail, "Mua Hàng Thành Công", "THANK YOU FOR YOUR PURCHASE!");
		
		SessionUtil.getInstance().removeValue(request, "order");
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/ordersuccess.jsp");
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

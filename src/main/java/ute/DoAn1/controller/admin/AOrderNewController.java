package ute.DoAn1.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.model.OrderItemsModel;
import ute.DoAn1.model.OrderModel;
import ute.DoAn1.service.IOrderItemsService;
import ute.DoAn1.service.IOrderService;
import ute.DoAn1.utils.FormUtil;

/**
 * Servlet implementation class AOrderNewController
 */
@WebServlet(urlPatterns = { "/admin-OrderNew" })
public class AOrderNewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IOrderItemsService IorderItems;
	@Inject
	private IOrderService Iorder;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AOrderNewController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// lay thong tin
		long order_id = Long.parseLong(request.getParameter("Orderid"));
		OrderItemsModel orderDetail = FormUtil.toModel(OrderItemsModel.class, request);
		orderDetail.setListResult(IorderItems.findAllOrderDetail(order_id));
		request.setAttribute("orderDetail", orderDetail);

		OrderModel orderModel = FormUtil.toModel(OrderModel.class, request);
		orderModel = Iorder.findOne(order_id);
		request.setAttribute("orderModel", orderModel);

		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/editOrder.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("action");
		long order_id = Long.parseLong(request.getParameter("Orderid"));
		OrderModel orderModel = FormUtil.toModel(OrderModel.class, request);
		
		if (action != null && action.equals("Confirm Order")) {
			orderModel.setId(order_id);
			Iorder.confirm(orderModel);
			
		} else if (action != null && action.equals("Cancel Order")) {
			orderModel.setId(order_id);
			Iorder.delete(orderModel);
		} 
		response.sendRedirect(request.getContextPath() + "/admin-Order");
	}

}

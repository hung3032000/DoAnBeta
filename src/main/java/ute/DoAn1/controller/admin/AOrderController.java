package ute.DoAn1.controller.admin;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.model.OrderModel;
import ute.DoAn1.service.IOrderService;
import ute.DoAn1.utils.FormUtil;

/**
 * Servlet implementation class AOrderController
 */
@WebServlet(urlPatterns = { "/admin-Order" })
public class AOrderController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private IOrderService Iorder;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public AOrderController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		OrderModel order = FormUtil.toModel(OrderModel.class, request);
		order.setTotalOrderPrice(Iorder.totalOrderPrice());
		order.setListResult(Iorder.findAll());
		
		request.setAttribute("order", order);
	
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/new/list.jsp");
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

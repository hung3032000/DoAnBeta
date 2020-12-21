package ute.DoAn1.controller.web;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ute.DoAn1.model.CategoriesModel;
import ute.DoAn1.model.OrderModel;
import ute.DoAn1.model.UserModel;
import ute.DoAn1.service.ICategoriesService;
import ute.DoAn1.service.IOrderService;
import ute.DoAn1.utils.FormUtil;
import ute.DoAn1.utils.SessionUtil;

/**
 * Servlet implementation class OrderDetail
 */
@WebServlet(urlPatterns = { "/user-orderdetail" })
public class OrderDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private ICategoriesService Icategory;
	@Inject
	private IOrderService IOrder;
	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public OrderDetail() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// load category
		CategoriesModel category = FormUtil.toModel(CategoriesModel.class, request);
		category.setListResult(Icategory.findAllP());
		request.setAttribute("category", category);
		//lay thong tin user_email
		UserModel user = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
		String user_email = user.getEmail();
		OrderModel order = FormUtil.toModel(OrderModel.class, request);
		order.setListResult(IOrder.findAll(user_email));
		request.setAttribute("order2", order);
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/order.jsp");
		rd.forward(request, response);
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

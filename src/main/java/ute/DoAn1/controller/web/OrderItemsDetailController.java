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
import ute.DoAn1.model.OrderItemsModel;
import ute.DoAn1.model.OrderModel;
import ute.DoAn1.service.ICategoriesService;
import ute.DoAn1.service.IOrderItemsService;
import ute.DoAn1.service.IOrderService;
import ute.DoAn1.utils.FormUtil;

/**
 * Servlet implementation class OrderItemsDetailController
 */
@WebServlet(urlPatterns = { "/user-orderItemsDetail" })
public class OrderItemsDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Inject
	private ICategoriesService Icategory;
	@Inject
	private IOrderItemsService IorderItems;
	@Inject
	private IOrderService Iorder;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderItemsDetailController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//load danh muc
		CategoriesModel category = FormUtil.toModel(CategoriesModel.class, request);
		category.setListResult(Icategory.findAllP());
		request.setAttribute("category", category);
		//lay thong tin
		long order_id = Long.parseLong(request.getParameter("order_id"));
		OrderItemsModel orderDetail= FormUtil.toModel(OrderItemsModel.class, request);
		orderDetail.setListResult(IorderItems.findAllOrderDetail(order_id));
		request.setAttribute("orderDetail", orderDetail);
		
		OrderModel orderModel= FormUtil.toModel(OrderModel.class, request);
		orderModel = Iorder.findOne(order_id);
		request.setAttribute("orderModel", orderModel);
		
		
		RequestDispatcher rd = request.getRequestDispatcher("/views/web/orderitemsdetail.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

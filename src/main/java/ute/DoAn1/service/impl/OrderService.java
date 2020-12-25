package ute.DoAn1.service.impl;

import java.util.List;

import javax.inject.Inject;

import ute.DoAn1.DAO.IOrderDAO;
import ute.DoAn1.model.OrderModel;
import ute.DoAn1.service.IOrderService;

public class OrderService implements IOrderService {
	@Inject
	private IOrderDAO orderDAO;
	@Override
	public OrderModel save(OrderModel orderModel) {
		Long neworder = orderDAO.save(orderModel);
		return orderDAO.findOne(neworder);
	}
	@Override
	public OrderModel findOne(long order_id) {
        return orderDAO.findOne(order_id);
	}
	@Override
	public List<OrderModel> findAllE(String user_email) {
		return orderDAO.findAllE(user_email);
	}
	@Override
	public List<OrderModel> findAll() {
		return orderDAO.findAll();
	}



}

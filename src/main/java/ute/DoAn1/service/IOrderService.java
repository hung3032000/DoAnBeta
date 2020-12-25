package ute.DoAn1.service;

import java.util.List;

import ute.DoAn1.model.OrderModel;

public interface IOrderService {
	OrderModel save(OrderModel orderModel);
	OrderModel findOne(long order_id);
	List<OrderModel> findAllE(String user_email);
	List<OrderModel> findAll();
}
package ute.DoAn1.service;

import java.util.List;

import ute.DoAn1.model.OrderItemsModel;

public interface IOrderItemsService {
	OrderItemsModel save(OrderItemsModel orderItemsModel);
	OrderItemsModel findOne(long orderItems_id);
	List<OrderItemsModel> findAllOrderDetail(long order_id);
}

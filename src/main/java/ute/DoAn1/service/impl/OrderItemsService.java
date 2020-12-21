package ute.DoAn1.service.impl;

import java.util.List;

import javax.inject.Inject;

import ute.DoAn1.DAO.IOrderItemsDAO;
import ute.DoAn1.model.OrderItemsModel;
import ute.DoAn1.service.IOrderItemsService;

public class OrderItemsService implements IOrderItemsService {
	@Inject
	private IOrderItemsDAO orderItemsDAO;

	@Override
	public OrderItemsModel save(OrderItemsModel orderItemsModel) {
		Long neworderItems = orderItemsDAO.save(orderItemsModel);

		return orderItemsDAO.findOne(neworderItems);
	}

	@Override
	public OrderItemsModel findOne(long orderItems_id) {
        return orderItemsDAO.findOne(orderItems_id);
	}

	@Override
	public List<OrderItemsModel> findAllOrderDetail(long order_id) {
		return orderItemsDAO.findAllOrderDetail(order_id);
	}

}

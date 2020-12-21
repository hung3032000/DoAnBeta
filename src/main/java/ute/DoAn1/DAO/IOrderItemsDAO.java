package ute.DoAn1.DAO;

import java.util.List;

import ute.DoAn1.model.OrderItemsModel;

public interface IOrderItemsDAO {
	Long save(OrderItemsModel orderItemsModel);
	OrderItemsModel findOne(long orderItemsId);
	List<OrderItemsModel> findAllOrderDetail(long order_id);
}

package ute.DoAn1.DAO;

import java.util.List;

import ute.DoAn1.model.OrderModel;

public interface IOrderDAO extends GenericDAO<OrderModel> {
	Long save(OrderModel orderModel);
	OrderModel findOne(long orderId);
	List<OrderModel> findAllE(String email);
	List<OrderModel> findAll();
	
}

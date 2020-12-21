package ute.DoAn1.DAO.impl;

import java.util.List;

import ute.DoAn1.DAO.IOrderItemsDAO;
import ute.DoAn1.mapper.OrderItemsMapper;
import ute.DoAn1.model.OrderItemsModel;

public class OrderItemsDAO extends AbstractDAO<OrderItemsModel> implements IOrderItemsDAO{

	@Override
	public Long save(OrderItemsModel orderItemsModel) {
		String sql = "insert into order_items(order_id,product_id,quantity,totalprice) values (?,?,?,?);";
		return insert(sql, orderItemsModel.getOrderId(),orderItemsModel.getProductId(),orderItemsModel.getQuantity(),orderItemsModel.getTotalPrice());

	}

	@Override
	public OrderItemsModel findOne(long orderItemsId) {
		String sql = "select * from order_items where id = ?;";
		List<OrderItemsModel> orderIems = query(sql, new OrderItemsMapper(), orderItemsId);
		return orderIems.isEmpty() ? null : orderIems.get(0);
	}

	@Override
	public List<OrderItemsModel> findAllOrderDetail(long order_id) {
		StringBuilder sql = new StringBuilder("select  *");
		sql.append(" from order_items oi join product p on oi.product_id=p.id");
		sql.append(" where order_id =?;");
		return query(sql.toString(), new OrderItemsMapper(), order_id);
	}

}

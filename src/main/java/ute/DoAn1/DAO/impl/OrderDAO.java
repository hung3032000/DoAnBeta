package ute.DoAn1.DAO.impl;

import java.util.List;

import ute.DoAn1.DAO.IOrderDAO;
import ute.DoAn1.mapper.OrderMapper;
import ute.DoAn1.model.OrderModel;

public class OrderDAO extends AbstractDAO<OrderModel> implements IOrderDAO {

	@Override
	public Long save(OrderModel orderModel) {
		String sql = "insert into orders(user_email,customer_id,totalprice,status,created_at) values (?,?,?,1,now());";
		return insert(sql, orderModel.getUseremail(), orderModel.getCustomerId(), orderModel.getTotalprice());
	}

	@Override
	public OrderModel findOne(long order_id) {
		String sql = "select * from orders o join customer c on o.customer_id = c.id  where o.id =?;";
		List<OrderModel> order = query(sql, new OrderMapper(), order_id);
		return order.isEmpty() ? null : order.get(0);
	}

	@Override
	public List<OrderModel> findAllE(String email) {
		String sql = "select * from orders  where user_email = ?;";

		return query(sql, new OrderMapper(), email);
	}

	@Override
	public List<OrderModel> findAll() {
		String sql = "select * from orders;";

		return query(sql, new OrderMapper());
	}

}

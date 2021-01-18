package ute.DoAn1.DAO.impl;

import java.util.List;

import ute.DoAn1.DAO.IOrderDAO;
import ute.DoAn1.mapper.OrderMapper;
import ute.DoAn1.model.OrderModel;

public class OrderDAO extends AbstractDAO<OrderModel> implements IOrderDAO {

	@Override
	public Long save(OrderModel orderModel) {
		String sql = "insert into orders(user_email,customer_id,totalprice,status,created_at) values (?,?,?,0,now());";
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

	@Override
	public void confirm(OrderModel orderModel) {
		String sql = "update orders set status = 1 where id = ?;";
		this.update(sql,orderModel.getId());
		
	}

	@Override
	public void delete(OrderModel orderModel) {
		String sql = "update orders set status = -1 where id = ?;";
		this.update(sql,orderModel.getId());
		
	}

	@Override
	public Long totalOrderPrice() {
		String sql = "SELECT SUM(totalprice) FROM orders where status = 1;";
		
		return queryCount(sql);
	}

}

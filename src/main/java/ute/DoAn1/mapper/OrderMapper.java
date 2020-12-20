package ute.DoAn1.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import ute.DoAn1.model.OrderModel;
import ute.DoAn1.model.UserModel;

public class OrderMapper implements RowMapper<OrderModel> {

	@Override
	public OrderModel mapRow(ResultSet resultSet) {
		try {
			OrderModel order = new OrderModel();
			order.setId(resultSet.getLong("id"));
			order.setTotalprice(resultSet.getLong("totalprice"));
			order.setStatus(resultSet.getInt("status"));
			order.setCreated_at(resultSet.getTimestamp("created_at"));
			order.setUpdated_at(resultSet.getTimestamp("updated_at"));
			try {
				UserModel user = new UserModel();
				user.setEmail(resultSet.getString("email"));
				order.setUser(user);
			} catch (Exception e) {
				System.out.print(e.getMessage());
			}
			return order;
		} catch (SQLException e) {
			return null;
		}
	}

}

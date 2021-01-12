package ute.DoAn1.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import ute.DoAn1.model.CustomerModel;
import ute.DoAn1.model.OrderModel;

public class OrderMapper implements RowMapper<OrderModel> {

	@Override
	public OrderModel mapRow(ResultSet resultSet) {
		try {
			OrderModel order = new OrderModel();
			order.setId(resultSet.getLong("id"));
			order.setTotalprice(resultSet.getLong("totalprice"));
			order.setStatus(resultSet.getInt("status"));
			order.setUseremail(resultSet.getString("user_email"));
			order.setCustomerId(resultSet.getLong("customer_id"));
			order.setCreated_at(resultSet.getTimestamp("created_at"));
			order.setUpdated_at(resultSet.getTimestamp("updated_at"));

			try {
				CustomerModel cus = new CustomerModel();
				cus.setId(resultSet.getLong("id"));
				cus.setUser_email(resultSet.getString("user_email"));
		
				cus.setTitle(resultSet.getString("title"));
				cus.setlName(resultSet.getString("lname"));
				cus.setfName(resultSet.getString("fname"));
				
				cus.setPhone(resultSet.getString("phone"));
				cus.setAddress(resultSet.getString("address"));
				cus.setCreated_at(resultSet.getTimestamp("created_at"));
				cus.setUpdated_at(resultSet.getTimestamp("updated_at"));
				order.setCustomer(cus);
			} catch (Exception e) {
				System.out.print(e.getMessage());
			}
			return order;
		} catch (SQLException e) {
			return null;
		}
	}

}

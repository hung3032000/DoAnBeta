package ute.DoAn1.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import ute.DoAn1.model.CustomerModel;

public class CustomerMapper implements RowMapper<CustomerModel>{

	@Override
	public CustomerModel mapRow(ResultSet resultSet) {
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
			
			return cus;
		} catch (SQLException e) {
			return null;
		}
	}

}

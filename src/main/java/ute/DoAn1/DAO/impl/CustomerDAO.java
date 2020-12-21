package ute.DoAn1.DAO.impl;

import java.util.List;

import ute.DoAn1.DAO.ICustomerDAO;
import ute.DoAn1.mapper.CustomerMapper;
import ute.DoAn1.model.CustomerModel;

public class CustomerDAO extends AbstractDAO<CustomerModel> implements ICustomerDAO{

	@Override
	public Long save(CustomerModel customerModel) {
		String sql = "insert into customer(user_email,title,fname,lname,address,phone,created_at) values(?,?,?,?,?,?,now());";
		return insert(sql, customerModel.getUser_email(),customerModel.getTitle(),customerModel.getfName()
				,customerModel.getlName(),customerModel.getAddress(),customerModel.getPhone());
	}

	@Override
	public CustomerModel findOne(long cus_id) {
		String sql = "select * from customer where id = ?;";
		List<CustomerModel> cus = query(sql, new CustomerMapper(), cus_id);
		
		return cus.isEmpty() ? null : cus.get(0);
	}

}

package ute.DoAn1.DAO;

import ute.DoAn1.model.CustomerModel;

public interface ICustomerDAO extends GenericDAO<CustomerModel>{
	Long save(CustomerModel customerModel);
	CustomerModel findOne(long cus_id);
}

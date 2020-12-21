package ute.DoAn1.service;

import ute.DoAn1.model.CustomerModel;

public interface ICustomerService{
	CustomerModel save(CustomerModel customerModel);
	CustomerModel findOne(long cus_id);
}

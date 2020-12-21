package ute.DoAn1.service.impl;

import javax.inject.Inject;

import ute.DoAn1.DAO.ICustomerDAO;
import ute.DoAn1.model.CustomerModel;
import ute.DoAn1.service.ICustomerService;

public class CustomerService implements ICustomerService {

	@Inject
	private ICustomerDAO cusDAO;
	
	@Override
	public CustomerModel save(CustomerModel customerModel) {
		Long newcus = cusDAO.save(customerModel);
		return cusDAO.findOne(newcus);
	}

	@Override
	public CustomerModel findOne(long cus_id) {
        return cusDAO.findOne(cus_id);
	}

}

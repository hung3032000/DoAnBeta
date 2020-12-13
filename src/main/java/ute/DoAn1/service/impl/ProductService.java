package ute.DoAn1.service.impl;

import java.util.List;

import javax.inject.Inject;

import ute.DoAn1.DAO.IProductDAO;
import ute.DoAn1.model.ProductModel;
import ute.DoAn1.service.IProductService;

public class ProductService implements IProductService {
	@Inject
	private IProductDAO productDAO;

	@Override
	public List<ProductModel> findAllC(String category_id) {
		return productDAO.findAllC(category_id);
	}

	@Override
	public ProductModel totalProductC(String category_id) {
		
		return productDAO.totalProductC(category_id);
	}
	
}

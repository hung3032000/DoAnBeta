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
	public List<ProductModel> findAllC(String category_id, Integer offset, Integer limit) {
		return productDAO.findAllC(category_id,offset,limit);
	}

	@Override
	public int getTotalItem(String category_id) {
		return productDAO.getTotalItem(category_id);
	}
	
}

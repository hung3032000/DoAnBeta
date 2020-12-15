package ute.DoAn1.service.impl;

import java.util.List;

import javax.inject.Inject;

import ute.DoAn1.DAO.IProductImageDAO;
import ute.DoAn1.model.ProductImageModel;
import ute.DoAn1.service.IProductImageService;

public class ProductImageService implements IProductImageService {

	@Inject
	private IProductImageDAO productIDAO;
	
	@Override
	public List<ProductImageModel> findAll(String product_id) {
		return productIDAO.findAll(product_id);
	}

}

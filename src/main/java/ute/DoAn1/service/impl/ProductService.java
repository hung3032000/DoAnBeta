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
		return productDAO.findAllC(category_id, offset, limit);
	}

	@Override
	public int getTotalItem(String category_id) {
		return productDAO.getTotalItem(category_id);
	}

	@Override
	public ProductModel findOne(String product_id) {
		return productDAO.findOne(product_id);
	}

	@Override
	public List<ProductModel> findAll() {
		return productDAO.findAll();
	}

	@Override
	public ProductModel save(ProductModel productModel) {
		Long newProduct = productDAO.save(productModel);
		return productDAO.findOne(newProduct);
	}

	@Override
	public ProductModel findOne(long product_Id) {
		return productDAO.findOne(product_Id);
	}

	@Override
	public void update(ProductModel productModel) {
		productDAO.update(productModel);
		
	}

	@Override
	public void updateStatus(ProductModel productModel) {
		productDAO.updateStatus(productModel);
	}

	@Override
	public void delete(ProductModel productModel) {
		productDAO.delete(productModel);
		
	}

}

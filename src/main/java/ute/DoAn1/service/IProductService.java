package ute.DoAn1.service;

import java.util.List;

import ute.DoAn1.model.ProductModel;

public interface IProductService {
	List<ProductModel> findAllC(String category_id, Integer offset, Integer limit);
	int getTotalItem(String category_id);
	ProductModel findOne(String product_id);
	List<ProductModel> findAll();
	ProductModel save(ProductModel productModel);
	ProductModel findOne(long product_Id);
	void update(ProductModel productModel);
	void updateStatus(ProductModel productModel);
	void delete(ProductModel productModel);
}

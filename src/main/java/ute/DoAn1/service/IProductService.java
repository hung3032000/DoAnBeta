package ute.DoAn1.service;

import java.util.List;

import ute.DoAn1.model.ProductModel;

public interface IProductService {
	List<ProductModel> findAllC(String category_id);
	ProductModel totalProductC(String category_id);
}

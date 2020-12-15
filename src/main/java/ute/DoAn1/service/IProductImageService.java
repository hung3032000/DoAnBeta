package ute.DoAn1.service;

import java.util.List;

import ute.DoAn1.model.ProductImageModel;

public interface IProductImageService {
	List<ProductImageModel> findAll(String product_id);
}

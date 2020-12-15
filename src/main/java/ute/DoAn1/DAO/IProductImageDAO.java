package ute.DoAn1.DAO;

import java.util.List;

import ute.DoAn1.model.ProductImageModel;

public interface IProductImageDAO extends GenericDAO<ProductImageModel> {
	List<ProductImageModel> findAll(String product_id);
}

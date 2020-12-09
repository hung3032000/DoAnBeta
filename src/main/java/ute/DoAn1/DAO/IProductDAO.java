package ute.DoAn1.DAO;

import java.util.List;

import ute.DoAn1.model.ProductModel;

public interface IProductDAO extends GenericDAO<ProductModel> {
	List<ProductModel> findAll();
	ProductModel totalProduct();
}

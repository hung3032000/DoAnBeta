package ute.DoAn1.DAO.impl;

import java.util.List;

import ute.DoAn1.DAO.IProductImageDAO;
import ute.DoAn1.mapper.ProductImageMapper;
import ute.DoAn1.model.ProductImageModel;

public class ProductImageDAO extends AbstractDAO<ProductImageModel> implements IProductImageDAO{

	@Override
	public List<ProductImageModel> findAll(String product_id) {
		String sql = "SELECT * FROM product_image where product_id = ?;";
		return query(sql, new ProductImageMapper(),product_id);
	}

}

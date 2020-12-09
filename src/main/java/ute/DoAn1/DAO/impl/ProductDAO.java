package ute.DoAn1.DAO.impl;

import java.util.List;

import ute.DoAn1.DAO.IProductDAO;
import ute.DoAn1.mapper.ProductMapper;
import ute.DoAn1.model.ProductModel;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {

	@Override
	public List<ProductModel> findAll() {
		String sql = "SELECT * FROM product;";
		return query(sql, new ProductMapper());
	}

	@Override
	public ProductModel totalProduct() {
		String sql = "SELECT count(*) FROM product;";
		List<ProductModel> totalProduct = query(sql.toString(), new ProductMapper());
		return totalProduct.isEmpty() ? null : totalProduct.get(0);
	}
	
}

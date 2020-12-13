package ute.DoAn1.DAO.impl;

import java.util.List;

import ute.DoAn1.DAO.IProductDAO;
import ute.DoAn1.mapper.ProductMapper;
import ute.DoAn1.model.ProductModel;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {

	@Override
	public List<ProductModel> findAllC(String category_id) {
		String sql = "SELECT * FROM product where categorie_id =?;";
		return query(sql, new ProductMapper(),category_id);
	}

	@Override
	public ProductModel totalProductC(String category_id) {
		String sql = "SELECT count(*) FROM product where categorie_id = ?;";
		List<ProductModel> totalProduct = query(sql.toString(), new ProductMapper(),category_id);
		return totalProduct.isEmpty() ? null : totalProduct.get(0);
	}
	
}

package ute.DoAn1.DAO.impl;

import java.util.List;

import ute.DoAn1.DAO.IProductDAO;
import ute.DoAn1.mapper.ProductMapper;
import ute.DoAn1.model.ProductModel;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO {

	@Override
	public List<ProductModel> findAllC(String category_id, Integer offset, Integer limit) {
		if(offset == null && limit == null) {
			String sql = "SELECT * FROM product where categorie_id =?;";
			return query(sql, new ProductMapper(),category_id);
		}else {
		String sql = "SELECT * FROM product where categorie_id =? limit ?,?;";
		return query(sql, new ProductMapper(),category_id,offset,limit);
		}
	}

	@Override
	public int getTotalItem(String category_id) {
		String sql = "SELECT count(*) FROM product where categorie_id = ?;";
		return count(sql,category_id);
	}
	
}

package ute.DoAn1.DAO.impl;

import java.util.List;

import ute.DoAn1.DAO.ICategoriesDAO;
import ute.DoAn1.mapper.CategoriesMapper;
import ute.DoAn1.model.CategoriesModel;

public class CategoriesDAO extends AbstractDAO<CategoriesModel> implements ICategoriesDAO {

	@Override
	public List<CategoriesModel> findAll() {
		String sql = "SELECT * FROM categories";
		return query(sql, new CategoriesMapper());
	}

}

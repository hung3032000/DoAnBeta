package ute.DoAn1.DAO.impl;

import java.util.List;

import ute.DoAn1.DAO.ICategoriesDAO;
import ute.DoAn1.mapper.CategoriesMapper;
import ute.DoAn1.model.CategoriesModel;

public class CategoriesDAO extends AbstractDAO<CategoriesModel> implements ICategoriesDAO {

	@Override
	public List<CategoriesModel> findAllP() {
		String sql = "SELECT * FROM categories where parent_id = 1 and id > 1;";
		return query(sql, new CategoriesMapper());
	}

	@Override
	public List<CategoriesModel> findAllC(String category_id) {
		String sql = "SELECT * FROM categories where parent_id= ?;";
		return query(sql, new CategoriesMapper(), category_id);
	}

	@Override
	public List<CategoriesModel> findAll() {
		String sql = "SELECT * FROM categories;";
		return query(sql, new CategoriesMapper());
	}

	@Override
	public Long save(CategoriesModel categoriesModel) {
		String sql = "insert into categories(name,parent_id,image,created_at) values(?,?,?,now());";
		return insert(sql, categoriesModel.getName(),categoriesModel.getParent_id(),categoriesModel.getImage());
	}

	@Override
	public CategoriesModel findOne(long categoryid) {
		String sql = "SELECT * FROM categories where id = ?;";
		List<CategoriesModel> category = query(sql, new CategoriesMapper(), categoryid);
		return category.isEmpty() ? null : category.get(0);
	}

	@Override
	public void update(CategoriesModel categoriesModel) {
		String sql = "update categories set name=?, parent_id=?,image=?,updated_at=now() where id =?;";
		this.update(sql,categoriesModel.getName(),categoriesModel.getParent_id(),categoriesModel.getImage(),categoriesModel.getId());
		
	}
	

}

package ute.DoAn1.DAO;

import java.util.List;

import ute.DoAn1.model.CategoriesModel;

public interface ICategoriesDAO extends GenericDAO<CategoriesModel> {
	List<CategoriesModel> findAllP();
	List<CategoriesModel> findAllC(String category_id);
	List<CategoriesModel> findAll();
	List<CategoriesModel> findAllPandC();
	Long save(CategoriesModel categoriesModel);
	CategoriesModel findOne(long categoryid);
	void update(CategoriesModel categoriesModel);
	void updateStatus(CategoriesModel categoriesModel);
	void delete(CategoriesModel categoriesModel);
	
}

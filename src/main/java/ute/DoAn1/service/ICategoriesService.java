package ute.DoAn1.service;

import java.util.List;

import ute.DoAn1.model.CategoriesModel;



public interface ICategoriesService {
	List<CategoriesModel> findAllP();
	List<CategoriesModel> findAllC(String category_id);
	List<CategoriesModel> findAll();
	List<CategoriesModel> findAllPandC();
	CategoriesModel save(CategoriesModel categoriesModel);
	CategoriesModel findOne(long category_id);
	void update(CategoriesModel categoriesModel);
	void updateStatus(CategoriesModel categoriesModel);
	void delete(CategoriesModel categoriesModel);
}

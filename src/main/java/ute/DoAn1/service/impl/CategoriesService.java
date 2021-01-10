package ute.DoAn1.service.impl;

import java.util.List;

import javax.inject.Inject;

import ute.DoAn1.DAO.ICategoriesDAO;
import ute.DoAn1.model.CategoriesModel;
import ute.DoAn1.service.ICategoriesService;

public class CategoriesService implements ICategoriesService {

	@Inject
	private ICategoriesDAO categoryDao;

	@Override
	public List<CategoriesModel> findAllP() {
		return categoryDao.findAllP();
	}

	@Override
	public List<CategoriesModel> findAllC(String category_id) {
		return categoryDao.findAllC(category_id);
	}

	@Override
	public List<CategoriesModel> findAll() {
		return categoryDao.findAll();
	}

	@Override
	public CategoriesModel save(CategoriesModel categoriesModel) {
		Long newcategory = categoryDao.save(categoriesModel);
		return categoryDao.findOne(newcategory);
	}

	@Override
	public CategoriesModel findOne(long category_id) {
		return categoryDao.findOne(category_id);
	}

	@Override
	public void update(CategoriesModel categoriesModel) {
		categoryDao.update(categoriesModel);
	}

	@Override
	public void delete(CategoriesModel categoriesModel) {
		categoryDao.delete(categoriesModel);
		
	}

	@Override
	public void updateStatus(CategoriesModel categoriesModel) {
		categoryDao.updateStatus(categoriesModel);
		
	}

	@Override
	public List<CategoriesModel> findAllPandC() {
		return categoryDao.findAllPandC();
	}

}

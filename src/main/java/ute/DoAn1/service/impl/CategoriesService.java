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
	public List<CategoriesModel> findAll() {
		return categoryDao.findAll();
	}

}

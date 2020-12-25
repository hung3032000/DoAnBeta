package ute.DoAn1.service.impl;

import java.util.List;

import javax.inject.Inject;

import ute.DoAn1.DAO.IRoleDAO;
import ute.DoAn1.model.RoleModel;
import ute.DoAn1.service.IRoleService;

public class RoleService implements IRoleService {
	@Inject
	private IRoleDAO roleDAO;

	@Override
	public List<RoleModel> findAll() {
		return roleDAO.findAll();
	}

}

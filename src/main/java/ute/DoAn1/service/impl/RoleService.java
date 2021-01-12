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

	@Override
	public RoleModel findOne(String id) {
		return roleDAO.findOne(id);
	}

	@Override
	public RoleModel save(RoleModel roleModel) {
		String newRole = roleDAO.save(roleModel);
		return roleDAO.findOne(newRole);
	}

	@Override
	public void update(RoleModel roleModel) {
		roleDAO.update(roleModel);
		
	}

	@Override
	public void delete(RoleModel roleModel) {
		roleDAO.delete(roleModel);
		
	}

}

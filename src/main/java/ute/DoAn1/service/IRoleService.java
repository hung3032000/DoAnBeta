package ute.DoAn1.service;

import java.util.List;

import ute.DoAn1.model.RoleModel;

public interface IRoleService {
	List<RoleModel> findAll();
	RoleModel findOne(String id);
	RoleModel save(RoleModel roleModel);
	void update(RoleModel roleModel);
	void delete(RoleModel roleModel);
}

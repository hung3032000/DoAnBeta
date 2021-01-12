package ute.DoAn1.DAO;

import java.util.List;

import ute.DoAn1.model.RoleModel;

public interface IRoleDAO extends GenericDAO<RoleModel>{
	List<RoleModel> findAll();
	RoleModel findOne(String id);
	String save(RoleModel roleModel);
	void update(RoleModel roleModel);
	void delete(RoleModel roleModel);
}

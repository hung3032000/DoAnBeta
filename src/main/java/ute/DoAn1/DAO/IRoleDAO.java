package ute.DoAn1.DAO;

import java.util.List;

import ute.DoAn1.model.RoleModel;

public interface IRoleDAO extends GenericDAO<RoleModel>{
	List<RoleModel> findAll();
}

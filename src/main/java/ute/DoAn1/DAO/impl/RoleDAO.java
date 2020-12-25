package ute.DoAn1.DAO.impl;

import java.util.List;

import ute.DoAn1.DAO.IRoleDAO;
import ute.DoAn1.mapper.RoleMapper;
import ute.DoAn1.model.RoleModel;

public class RoleDAO extends AbstractDAO<RoleModel> implements IRoleDAO {

	@Override
	public List<RoleModel> findAll() {
		String sql = "select * from role;";
		return query(sql, new RoleMapper());
	}
	
}

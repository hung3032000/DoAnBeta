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

	@Override
	public RoleModel findOne(String id) {
		String sql = "SELECT * FROM role where id =?";
		List<RoleModel> role = query(sql.toString(), new RoleMapper(), id);
		return role.isEmpty() ? null : role.get(0);
	}

	@Override
	public String save(RoleModel roleModel) {
		String sql = "insert into role(id, code, name, rolestatus, created_at) values(?,?,?,?,now());";
		return insertU(sql,roleModel.getRoleId(),roleModel.getRoleId() ,roleModel.getCode(),roleModel.getName(),roleModel.getStatus());
	}

	@Override
	public void update(RoleModel roleModel) {
		String sql = "update role set id =?, code=?, name=?, rolestatus=?,updated_at=now() where id =?;";
		this.update(sql,roleModel.getRoleId(),roleModel.getCode(),roleModel.getName(),roleModel.getStatus(),roleModel.getRoleId());
	}

	@Override
	public void delete(RoleModel roleModel) {
		String sql = "update role set rolestatus=0,updated_at=now() where id =?;";
		this.update(sql,roleModel.getRoleId());
	}
	
}

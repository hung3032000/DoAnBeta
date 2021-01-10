package ute.DoAn1.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import ute.DoAn1.model.RoleModel;

public class RoleMapper implements RowMapper<RoleModel>{

	@Override
	public RoleModel mapRow(ResultSet resultSet) {
		try {
			RoleModel role = new RoleModel();
			role.setId(resultSet.getLong("id"));
			role.setCode(resultSet.getString("code"));
			role.setName(resultSet.getString("name"));
			role.setStatus(resultSet.getInt("rolestatus"));
			role.setCreated_at(resultSet.getTimestamp("created_at"));
			role.setUpdated_at(resultSet.getTimestamp("updated_at"));
			return role;
		} catch (SQLException e) {
			return null;
		}
	}

}

package ute.DoAn1.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import ute.DoAn1.model.RoleModel;
import ute.DoAn1.model.UserModel;

public class UserMapper implements RowMapper<UserModel> {

	@Override
	public UserModel mapRow(ResultSet resultSet) {
		try {
			UserModel user = new UserModel();
			user.setTitle(resultSet.getString("title"));
			user.setlName(resultSet.getString("lname"));
			user.setfName(resultSet.getString("fname"));
			user.setEmail(resultSet.getString("email"));
			user.setDateOfBirth(resultSet.getDate("dayOfBirth"));
			user.setAddress(resultSet.getString("address"));
			user.setPassWord(resultSet.getString("password"));
			user.setStatus(resultSet.getInt("status"));
			user.setRoleId(resultSet.getInt("role_id"));
			user.setCreated_at(resultSet.getTimestamp("created_at"));
			user.setUpdated_at(resultSet.getTimestamp("updated_at"));
			try {
				RoleModel role = new RoleModel();
				role.setCode(resultSet.getString("code"));
				role.setName(resultSet.getString("name"));
				user.setRole(role);
			} catch (Exception e) {
				System.out.print(e.getMessage());
			}
			return user;
		} catch (SQLException e) {
			return null;
		}
	}
}

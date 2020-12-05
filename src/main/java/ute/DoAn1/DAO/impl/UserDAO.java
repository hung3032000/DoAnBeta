package ute.DoAn1.DAO.impl;

import java.util.List;

import ute.DoAn1.DAO.IUserDAO;
import ute.DoAn1.mapper.UserMapper;
import ute.DoAn1.model.UserModel;

public class UserDAO extends AbstractDAO<UserModel> implements IUserDAO {


	@Override
	public UserModel findByUserEmailAndPasswordAndStatus(String email, String password, Integer status) {
		StringBuilder sql = new StringBuilder("SELECT * FROM users AS u");
		sql.append(" INNER JOIN role AS r ON r.id = u.role_id");
		sql.append(" WHERE email = ? AND password = ? AND status = ?");
		List<UserModel> users = query(sql.toString(), new UserMapper(), email, password, status);
		return users.isEmpty() ? null : users.get(0);
	}



}

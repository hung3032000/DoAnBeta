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

	@Override
	public UserModel findOne(String email) {
		String sql = "SELECT * FROM users where email =?";
		List<UserModel> users = query(sql.toString(), new UserMapper(), email);
		return users.isEmpty() ? null : users.get(0);
	}



	@Override
	public String save(UserModel userModel) {
		String sql = "insert into users (title,fname,lname,email,password,status,role_id,created_at) "
				+ "values(?,?,?,?,?,1,3,now());";
		return insertU(sql, userModel.getEmail(), userModel.getTitle(),userModel.getfName(),userModel.getlName(),userModel.getEmail(),userModel.getPassWord());
	}

	@Override
	public void update(UserModel userModel) {
		String sql = "update users set title= ? ,fname= ? ,lname= ?,address = ?, dayofbirth= ? ,updated_at = now() where email = ?;";
		this.update(sql,userModel.getTitle(),userModel.getfName(),userModel.getlName(),userModel.getAddress(),userModel.getDateOfBirth(),userModel.getEmail());
	}

	@Override
	public List<UserModel> findAll() {
		String sql = "SELECT * FROM users;";
		return query(sql, new UserMapper());
	}

}

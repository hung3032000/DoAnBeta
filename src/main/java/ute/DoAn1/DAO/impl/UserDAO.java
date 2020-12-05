package ute.DoAn1.DAO.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
		String sql ="SELECT * FROM users where email =?";
		List<UserModel> users = query(sql.toString(), new UserMapper(), email);	
		return users.isEmpty() ? null : users.get(0);
	}



	@Override
	public boolean insert(Object obj) {
		Connection conn = null;
		String sql = "insert into users"
				+ "(title,fname,lname,email,password,status,role_id,created_at) "
				+ "values(?,?,?,?,?,1,3,now());";
		UserModel user = (UserModel) obj;
		try {
			conn = getConnection();
			PreparedStatement pstm = conn.prepareStatement(sql);
			pstm.setString(1, user.getTitle());
			pstm.setString(2, user.getfName());
			pstm.setString(3, user.getlName());
			pstm.setString(4, user.getEmail());
			pstm.setString(5, user.getPassWord());
			pstm.executeUpdate();
			return true;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}





}

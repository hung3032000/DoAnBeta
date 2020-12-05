package ute.DoAn1.DAO;

import java.sql.Connection;

import ute.DoAn1.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel>{

	UserModel findByUserEmailAndPasswordAndStatus(String email, String password, Integer status);
	UserModel findOne(String email);
	public boolean insert(Object obj);
}

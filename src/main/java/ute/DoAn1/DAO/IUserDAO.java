package ute.DoAn1.DAO;

import java.util.List;

import ute.DoAn1.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel>{

	UserModel findByUserEmailAndPasswordAndStatus(String email, String password, Integer status);
	UserModel findOne(String email);
	String save(UserModel userModel);
	void update(UserModel userModel);
	List<UserModel> findAll();
}

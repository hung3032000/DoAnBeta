package ute.DoAn1.service;

import java.util.List;

import ute.DoAn1.model.UserModel;

public interface IUserService {
	UserModel findByUserEmailAndPasswordAndStatus(String userName, String password, Integer status);
	UserModel findOne(String email);
	UserModel save(UserModel userModel);
	public boolean checkRegister(String fName,String lName,String email,String passWord);
	void update(UserModel userModel);
	List<UserModel> findAll();
}

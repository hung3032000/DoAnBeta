package ute.DoAn1.service;

import java.util.List;

import ute.DoAn1.model.UserModel;

public interface IUserService {
	UserModel findByUserEmailAndPasswordAndStatus(String userName, String password, Integer status);
	UserModel findOne(String email);
	UserModel save(UserModel userModel);
	void update(UserModel userModel);
	void delete(String email);
	List<UserModel> findAll();
	void updatePass(UserModel userModel);
	public boolean checkPass(String passWord,String passWordU);
	public boolean checkCPass(String passWordN,String passWordConf);
	public boolean checkRegister(String fName,String lName,String email,String passWord);
}

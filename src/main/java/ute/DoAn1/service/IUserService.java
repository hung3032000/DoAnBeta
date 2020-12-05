package ute.DoAn1.service;

import ute.DoAn1.model.UserModel;

public interface IUserService {
	UserModel findByUserEmailAndPasswordAndStatus(String userName, String password, Integer status);
}

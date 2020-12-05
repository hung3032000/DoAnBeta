package ute.DoAn1.DAO;

import ute.DoAn1.model.UserModel;

public interface IUserDAO extends GenericDAO<UserModel>{

	UserModel findByUserEmailAndPasswordAndStatus(String email, String password, Integer status);

}

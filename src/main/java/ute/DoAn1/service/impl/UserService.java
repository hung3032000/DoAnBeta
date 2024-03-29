package ute.DoAn1.service.impl;



import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.inject.Inject;

import ute.DoAn1.DAO.IUserDAO;
import ute.DoAn1.model.UserModel;
import ute.DoAn1.service.IUserService;

public class UserService implements IUserService{
	@Inject
	private IUserDAO userDAO;



	@Override
	public UserModel findByUserEmailAndPasswordAndStatus(String email, String password, Integer status) {
		return userDAO.findByUserEmailAndPasswordAndStatus(email, password, status);
	}



	@Override
	public UserModel findOne(String email) {
		return userDAO.findOne(email);
	}



	@Override
	public UserModel save(UserModel userModel) {
		String newemail = userDAO.save(userModel);
		return userDAO.findOne(newemail);
	}


	@Override
	public void update(UserModel userModel) {	
		userDAO.update(userModel);
	}

	@Override
	public boolean checkRegister(String fName,String lName,String email,String passWord){
		String cusfName = fName;
		String cuslName = lName;
		String cusemail = email;
		String cusPassWord = passWord;
		Pattern mailPattern = Pattern.compile("\\w+@\\w+(.\\w+)*");
		Matcher cusMatcher= mailPattern.matcher(cusemail);
		if (cusfName.equals("") || cuslName.equals("")||cusPassWord.equals("")) {
			return false;
		}
		else if(!cusMatcher.matches()) {
				return false;
		}
		return true;
		
	}


	@Override
	public List<UserModel> findAll() {
		 return userDAO.findAll(); 
	}

	@Override
	public void updatePass(UserModel userModel) {
		userDAO.updatePass(userModel);
	}

	@Override
	public boolean checkPass(String passWord, String passWordU) {
		if (passWord.equals(passWordU)) {
			return true;
		}
		return false;
	}



	@Override
	public boolean checkCPass(String passWordN, String passWordConf) {
		if (passWordN.equals(passWordConf)) {
			return true;
		}
		return false;
	}



	@Override
	public void delete(String email) {
		userDAO.delete(email);
	}



	
}

package ute.DoAn1.service.impl;



import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import ute.DoAn1.DAO.IUserDAO;
import ute.DoAn1.DAO.impl.UserDAO;
import ute.DoAn1.model.UserModel;
import ute.DoAn1.service.IUserService;

public class UserService implements IUserService{
	
	private IUserDAO userDAO;

	public UserService() {
		userDAO = new UserDAO();
	}


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



	
}

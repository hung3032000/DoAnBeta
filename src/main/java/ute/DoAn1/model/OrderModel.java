package ute.DoAn1.model;

import java.util.List;

public class OrderModel extends AbstractModel<ItemsModel>{
	private UserModel user = new UserModel();
	private int status;
	
	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public UserModel getUser() {
		return user;
	}

	public void setUser(UserModel user) {
		this.user = user;
	}
}

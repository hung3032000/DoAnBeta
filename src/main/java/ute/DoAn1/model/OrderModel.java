package ute.DoAn1.model;

public class OrderModel extends AbstractModel<OrderModel> {
	private UserModel user = new UserModel();
	private long totalprice;
	private int status;
	public UserModel getUser() {
		return user;
	}
	public void setUser(UserModel user) {
		this.user = user;
	}
	public long getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(long totalprice) {
		this.totalprice = totalprice;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
			
			
				
}

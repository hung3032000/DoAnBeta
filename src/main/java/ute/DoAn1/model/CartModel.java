package ute.DoAn1.model;

public class CartModel extends AbstractModel<OrderItemsModel>{
	private UserModel user = new UserModel();

	private int totalProduct;
	private long totalPrice;
	public long getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(long totalPrice) {
		this.totalPrice = totalPrice;
	}

	public int getTotalProduct() {
		return totalProduct;
	}

	public void setTotalProduct(int totalProduct) {
		this.totalProduct = totalProduct;
	}

	public UserModel getUser() {
		return user;
	}

	public void setUser(UserModel user) {
		this.user = user;
	}
}

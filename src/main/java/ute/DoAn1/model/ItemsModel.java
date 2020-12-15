package ute.DoAn1.model;

public class ItemsModel extends AbstractModel<ItemsModel>{
	private int quantity;
	private ProductModel product = new ProductModel();
	private long price;
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public ProductModel getProduct() {
		return product;
	}
	public void setProduct(ProductModel product) {
		this.product = product;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}

}

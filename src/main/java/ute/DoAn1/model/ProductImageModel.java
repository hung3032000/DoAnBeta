package ute.DoAn1.model;

public class ProductImageModel extends AbstractModel<ProductImageModel> {
	private String image;
	private long productId;
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public long getProductId() {
		return productId;
	}
	public void setProductId(long productId) {
		this.productId = productId;
	}
	
	
}

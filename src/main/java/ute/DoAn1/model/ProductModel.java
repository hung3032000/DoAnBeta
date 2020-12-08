package ute.DoAn1.model;

public class ProductModel extends AbstractModel<ProductModel>{
	private String name;
	private int price;
	private String content;
	private String image;
	private long categorie_id;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public long getCategorie_id() {
		return categorie_id;
	}
	public void setCategorie_id(long categorie_id) {
		this.categorie_id = categorie_id;
	}
	
}

package ute.DoAn1.model;

public class ProductModel extends AbstractModel<ProductModel>{
	private String name;
	private int price;
	private String content;
	private String image;
	private long categorie_id;
	private int quantity;
	private String origin;
	private String shortdecription;
	private String color;
	private String size;
	private int status;
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getSize() {
		return size;
	}
	public void setSize(String size) {
		this.size = size;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getShortdecription() {
		return shortdecription;
	}
	public void setShortdecription(String shortdecription) {
		this.shortdecription = shortdecription;
	}
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

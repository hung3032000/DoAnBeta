package ute.DoAn1.model;

public class CategoriesModel extends AbstractModel<CategoriesModel> {
	private String name;
	private int parent_id;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getParent_id() {
		return parent_id;
	}
	public void setParent_id(int parent_id) {
		this.parent_id = parent_id;
	}
}

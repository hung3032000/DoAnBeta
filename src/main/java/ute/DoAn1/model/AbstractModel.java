package ute.DoAn1.model;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

public class AbstractModel<T> {
	private long id;
	private Timestamp created_at;
	private Timestamp updated_at;
	private List<T> listResult = new ArrayList<>();
	private String type;
	

	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}	
	public List<T> getListResult() {
		return listResult;
	}
	public void setListResult(List<T> listResult) {
		this.listResult = listResult;
	}
	public AbstractModel() {
	}
	public AbstractModel(long id, Timestamp created_at, Timestamp updated_at) {
		super();
		this.id = id;
		this.created_at = created_at;
		this.updated_at = updated_at;
	}
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public Timestamp getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Timestamp created_at) {
		this.created_at = created_at;
	}
	public Timestamp getUpdated_at() {
		return updated_at;
	}
	public void setUpdated_at(Timestamp updated_at) {
		this.updated_at = updated_at;
	}
}

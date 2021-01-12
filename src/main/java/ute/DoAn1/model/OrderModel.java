package ute.DoAn1.model;

public class OrderModel extends AbstractModel<OrderModel> {
	
	private long totalprice;
	private int status;
	private String useremail;
	private long customerId;
	private long totalOrderPrice;
	private CustomerModel customer = new CustomerModel();
	

	public CustomerModel getCustomer() {
		return customer;
	}
	public void setCustomer(CustomerModel customer) {
		this.customer = customer;
	}
	public long getCustomerId() {
		return customerId;
	}
	public void setCustomerId(long customerId) {
		this.customerId = customerId;
	}
	public long getTotalOrderPrice() {
		return totalOrderPrice;
	}
	public void setTotalOrderPrice(long totalOrderPrice) {
		this.totalOrderPrice = totalOrderPrice;
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
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public void setStatus(int status) {
		this.status = status;
	}
			
			
				
}

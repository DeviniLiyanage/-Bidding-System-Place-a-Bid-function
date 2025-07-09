package Biddingsystem;

public class bidmodel {

	private int bidId;
	private String  fullname;
	private String bidnumber;
	private String date;
	private double price;
	public bidmodel(int bidId, String fullname, String bidnumber, String date, double bidPrice) {
		super();
		this.bidId = bidId;
		this.fullname = fullname;
		this.bidnumber = bidnumber;
		this.date = date;
		this.price = price;
	}
	public int getBidId() {
		return bidId;
	}
	public void setBidId(int bidId) {
		this.bidId = bidId;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getBidnumber() {
		return bidnumber;
	}
	public void setBidnumber(String bidnumber) {
		this.bidnumber = bidnumber;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	
}
	

package tools;
//-----------測試NativeSQL inner join(OrderListJoin & houseInformation table) ----------------
public class OrderListJoin {
	private String orderHouseNumber;
	private String houseName;
	private String houseType;
	private java.util.Date orderDate;
	private java.util.Date checkInDate;
	private java.util.Date checkOutDate ;
	private Integer numberOfPeople;
	private Integer bonus;
	private Integer checkoutAmount;
	private Integer starCount;
	private String comment;
	
	@Override
	public String toString() {
		return "OrderListJoin [orderHouseNumber=" + orderHouseNumber + ", houseName=" + houseName + ", houseType="
				+ houseType + ", orderDate=" + orderDate + ", checkInDate=" + checkInDate + ", checkOutDate="
				+ checkOutDate + ", numberOfPeople=" + numberOfPeople + ", bonus=" + bonus + ", checkoutAmount="
				+ checkoutAmount + ", starCount=" + starCount + ", comment=" + comment + "]";
	}
	public String getOrderHouseNumber() {
		return orderHouseNumber;
	}
	public void setOrderHouseNumber(String orderHouseNumber) {
		this.orderHouseNumber = orderHouseNumber;
	}
	public String getHouseName() {
		return houseName;
	}
	public void setHouseName(String houseName) {
		this.houseName = houseName;
	}
	public String getHouseType() {
		return houseType;
	}
	public void setHouseType(String houseType) {
		this.houseType = houseType;
	}
	public java.util.Date getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(java.util.Date orderDate) {
		this.orderDate = orderDate;
	}
	public java.util.Date getCheckInDate() {
		return checkInDate;
	}
	public void setCheckInDate(java.util.Date checkInDate) {
		this.checkInDate = checkInDate;
	}
	public java.util.Date getCheckOutDate() {
		return checkOutDate;
	}
	public void setCheckOutDate(java.util.Date checkOutDate) {
		this.checkOutDate = checkOutDate;
	}
	public Integer getNumberOfPeople() {
		return numberOfPeople;
	}
	public void setNumberOfPeople(Integer numberOfPeople) {
		this.numberOfPeople = numberOfPeople;
	}
	public Integer getBonus() {
		return bonus;
	}
	public void setBonus(Integer bonus) {
		this.bonus = bonus;
	}
	public Integer getCheckoutAmount() {
		return checkoutAmount;
	}
	public void setCheckoutAmount(Integer checkoutAmount) {
		this.checkoutAmount = checkoutAmount;
	}
	public Integer getStarCount() {
		return starCount;
	}
	public void setStarCount(Integer starCount) {
		this.starCount = starCount;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
}

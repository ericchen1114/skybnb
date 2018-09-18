package model.bean;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.Cascade;
import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "HouseInformation")
public class HouseInformationBean {
	@Id
	private String houseID;

	private String memberID;

	private String houseName;

	private String houseType;

	private Boolean houseSpace;

	private Integer maxPeopleAvailable;

	private String country;

	private String address;

	private Double mapLongitude;

	private Double mapLatitude;

	private Byte housePicture;

	private String facility;

	private String houseIntroduction;

	private String houseRules;

	private Integer price;
	// 讓view顯示出來不會有時間(00:000:00)

	@Temporal(TemporalType.DATE)
	private java.util.Date startRentTime;
	// 讓view顯示出來不會有時間(00:000:00)

	@Temporal(TemporalType.DATE)
	private java.util.Date endRentTime;

	private Boolean freeCancel;

	private Boolean wishList;

	private Double starCountAverage;

	private Integer totalComment;

	public Boolean getWishList() {
		return wishList;
	}

	public void setWishList(Boolean wishList) {
		this.wishList = wishList;
	}

	public String getHouseID() {
		return houseID;
	}

	public void setHouseID(String houseID) {
		this.houseID = houseID;
	}

	public String getMemberID() {
		return memberID;
	}

	public void setMemberID(String memberID) {
		this.memberID = memberID;
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

	public Boolean getHouseSpace() {
		return houseSpace;
	}

	public void setHouseSpace(Boolean houseSpace) {
		this.houseSpace = houseSpace;
	}

	public Integer getMaxPeopleAvailable() {
		return maxPeopleAvailable;
	}

	public void setMaxPeopleAvailable(Integer maxPeopleAvailable) {
		this.maxPeopleAvailable = maxPeopleAvailable;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Double getMapLongitude() {
		return mapLongitude;
	}

	public void setMapLongitude(Double mapLongitude) {
		this.mapLongitude = mapLongitude;
	}

	public Double getMapLatitude() {
		return mapLatitude;
	}

	public void setMapLatitude(Double mapLatitude) {
		this.mapLatitude = mapLatitude;
	}

	public Byte getHousePicture() {
		return housePicture;
	}

	public void setHousePicture(Byte housePicture) {
		this.housePicture = housePicture;
	}

	public String getFacility() {
		return facility;
	}

	public void setFacility(String facility) {
		this.facility = facility;
	}

	public String getHouseIntroduction() {
		return houseIntroduction;
	}

	public void setHouseIntroduction(String houseIntroduction) {
		this.houseIntroduction = houseIntroduction;
	}

	public String getHouseRules() {
		return houseRules;
	}

	public void setHouseRules(String houseRules) {
		this.houseRules = houseRules;
	}

	public Integer getPrice() {
		return price;
	}

	public void setPrice(Integer price) {
		this.price = price;
	}

	public java.util.Date getStartRentTime() {
		return startRentTime;
	}

	public void setStartRentTime(java.util.Date startRentTime) {
		this.startRentTime = startRentTime;
	}

	public java.util.Date getEndRentTime() {
		return endRentTime;
	}

	public void setEndRentTime(java.util.Date endRentTime) {
		this.endRentTime = endRentTime;
	}

	public Boolean getFreeCancel() {
		return freeCancel;
	}

	public void setFreeCancel(Boolean freeCancel) {
		this.freeCancel = freeCancel;
	}

	public Double getStarCountAverage() {
		return starCountAverage;
	}

	public void setStarCountAverage(Double starCountAverage) {
		this.starCountAverage = starCountAverage;
	}

	public Integer getTotalComment() {
		return totalComment;
	}

	public void setTotalComment(Integer totalComment) {
		this.totalComment = totalComment;
	}

	@Override
	public String toString() {
		return "HouseInformationBean [houseID=" + houseID + ", memberID=" + memberID + ", houseName=" + houseName
				+ ", houseType=" + houseType + ", houseSpace=" + houseSpace + ", maxPeopleAvailable="
				+ maxPeopleAvailable + ", country=" + country + ", address=" + address + ", mapLongitude="
				+ mapLongitude + ", mapLatitude=" + mapLatitude + ", housePicture=" + housePicture + ", facility="
				+ facility + ", houseIntroduction=" + houseIntroduction + ", houseRules=" + houseRules + ", price="
				+ price + ", startRentTime=" + startRentTime + ", endRentTime=" + endRentTime + ", freeCancel="
				+ freeCancel + ", wishList=" + wishList + ", starCountAverage=" + starCountAverage + ", totalComment="
				+ totalComment + "]";
	}

}

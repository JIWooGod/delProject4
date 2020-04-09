package model.dto.room;

import java.io.Serializable;
import java.sql.Timestamp;
import java.util.Date;


@SuppressWarnings("serial")
public class ReservationDTO implements Serializable {
	private Integer rmbkNo;
	private String memId;
	private Integer roomNo;
	private String roomGrade;
	private Integer payNo;
	private Timestamp rmbkDate;
	private String rmbkPeople;
	private String rmbkPrice;
	private String rmbkAdd;
	private Timestamp rmbkChkIn;
	private Timestamp rmbkChkOut;
	private String realIn;
	private String realOut;
	private String roomCount;
	private String roomDays;
	private String userName;
	private String userPh;
	private String dndMode;
	private String noFeader;
	private String uncomFort;
	private String rmbkOption;
	private String roomView;
	private String roomBed;
	private String roomSelect;
	
	
	
	public String getRoomSelect() {
		return roomSelect;
	}
	public void setRoomSelect(String roomSelect) {
		this.roomSelect = roomSelect;
	}
	public String getRoomView() {
		return roomView;
	}
	public void setRoomView(String roomView) {
		this.roomView = roomView;
	}
	public String getRoomBed() {
		return roomBed;
	}
	public void setRoomBed(String roomBed) {
		this.roomBed = roomBed;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPh() {
		return userPh;
	}
	public void setUserPh(String userPh) {
		this.userPh = userPh;
	}
	public String getDndMode() {
		return dndMode;
	}
	public void setDndMode(String dndMode) {
		this.dndMode = dndMode;
	}
	public String getNoFeader() {
		return noFeader;
	}
	public void setNoFeader(String noFeader) {
		this.noFeader = noFeader;
	}
	public String getUncomFort() {
		return uncomFort;
	}
	public void setUncomFort(String uncomFort) {
		this.uncomFort = uncomFort;
	}
	public String getRoomDays() {
		return roomDays;
	}
	public void setRoomDays(String roomDays) {
		this.roomDays = roomDays;
	}
	public String getRoomCount() {
		return roomCount;
	}
	public void setRoomCount(String roomCount) {
		this.roomCount = roomCount;
	}
	public Integer getRmbkNo() {
		return rmbkNo;
	}
	public void setRmbkNo(Integer rmbkNo) {
		this.rmbkNo = rmbkNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public Integer getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(Integer roomNo) {
		this.roomNo = roomNo;
	}
	public String getRoomGrade() {
		return roomGrade;
	}
	public void setRoomGrade(String roomGrade) {
		this.roomGrade = roomGrade;
	}
	public Integer getPayNo() {
		return payNo;
	}
	public void setPayNo(Integer payNo) {
		this.payNo = payNo;
	}
	public Timestamp getRmbkDate() {
		return rmbkDate;
	}
	public void setRmbkDate(Timestamp rmbkDate) {
		this.rmbkDate = rmbkDate;
	}
	public String getRmbkOption() {
		return rmbkOption;
	}
	public void setRmbkOption(String rmbkOption) {
		this.rmbkOption = rmbkOption;
	}

	public String getRmbkPeople() {
		return rmbkPeople;
	}
	public void setRmbkPeople(String rmbkPeople) {
		this.rmbkPeople = rmbkPeople;
	}
	public String getRmbkPrice() {
		return rmbkPrice;
	}
	public void setRmbkPrice(String rmbkPrice) {
		this.rmbkPrice = rmbkPrice;
	}
	public String getRmbkAdd() {
		return rmbkAdd;
	}
	public void setRmbkAdd(String rmbkAdd) {
		this.rmbkAdd = rmbkAdd;
	}
	public Timestamp getRmbkChkIn() {
		return rmbkChkIn;
	}
	public void setRmbkChkIn(Timestamp rmbkChkIn) {
		this.rmbkChkIn = rmbkChkIn;
	}
	public Timestamp getRmbkChkOut() {
		return rmbkChkOut;
	}
	public void setRmbkChkOut(Timestamp rmbkChkOut) {
		this.rmbkChkOut = rmbkChkOut;
	}
	public String getRealIn() {
		return realIn;
	}
	public void setRealIn(String realIn) {
		this.realIn = realIn;
	}
	public String getRealOut() {
		return realOut;
	}
	public void setRealOut(String realOut) {
		this.realOut = realOut;
	}
	
	
}

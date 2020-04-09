package command.room;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class ReservationCommand {
	@DateTimeFormat(pattern= "yyyy-MM-dd")
	private Date fromdate;
	@DateTimeFormat(pattern= "yyyy-MM-dd")
	private Date todate;
	private String roomCount;
	private String people;
	private String days;
	private String roomGrade;
	private String userName;
	private String userPh1;
	private String userPh2;
	private String userPh3;
	private String roomView;
	private String roomBed;
	private String dndMode;
	private String noFeader;
	private String uncomfort;
	private String rmbkContent;
	private String roomSelect;
	private String roomPrice;
	
	
	
	
	public String getRoomPrice() {
		return roomPrice;
	}
	public void setRoomPrice(String roomPrice) {
		this.roomPrice = roomPrice;
	}
	public String getRoomSelect() {
		return roomSelect;
	}
	public void setRoomSelect(String roomSelect) {
		this.roomSelect = roomSelect;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPh1() {
		return userPh1;
	}
	public void setUserPh1(String userPh1) {
		this.userPh1 = userPh1;
	}
	public String getUserPh2() {
		return userPh2;
	}
	public void setUserPh2(String userPh2) {
		this.userPh2 = userPh2;
	}
	public String getUserPh3() {
		return userPh3;
	}
	public void setUserPh3(String userPh3) {
		this.userPh3 = userPh3;
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
	public String getUncomfort() {
		return uncomfort;
	}
	public void setUncomfort(String uncomfort) {
		this.uncomfort = uncomfort;
	}
	public String getRmbkContent() {
		return rmbkContent;
	}
	public void setRmbkContent(String rmbkContent) {
		this.rmbkContent = rmbkContent;
	}
	public String getRoomGrade() {
		return roomGrade;
	}
	public void setRoomGrade(String roomGrade) {
		this.roomGrade = roomGrade;
	}
	public Date getFromdate() {
		return fromdate;
	}
	public void setFromdate(Date fromdate) {
		this.fromdate = fromdate;
	}
	public Date getTodate() {
		return todate;
	}
	public void setTodate(Date todate) {
		this.todate = todate;
	}
	public String getRoomCount() {
		return roomCount;
	}
	public void setRoomCount(String roomCount) {
		this.roomCount = roomCount;
	}
	public String getPeople() {
		return people;
	}
	public void setPeople(String people) {
		this.people = people;
	}
	public String getDays() {
		return days;
	}
	public void setDays(String days) {
		this.days = days;
	}
	
	
	
}

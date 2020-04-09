package model.dto.room;

public class ReservationChkDTO {
	private String roomNo;
	private String roomGrade;
	private String roomBed;
	private String chkIn;
	private String chkOut;
	private String roomView;
	
	
	
	public String getRoomView() {
		return roomView;
	}
	public void setRoomView(String roomView) {
		this.roomView = roomView;
	}
	public String getRoomGrade() {
		return roomGrade;
	}
	public void setRoomGrade(String roomGrade) {
		this.roomGrade = roomGrade;
	}
	public String getRoomBed() {
		return roomBed;
	}
	public void setRoomBed(String roomBed) {
		this.roomBed = roomBed;
	}
	
	public String getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(String roomNo) {
		this.roomNo = roomNo;
	}
	public String getChkIn() {
		return chkIn;
	}
	public void setChkIn(String chkIn) {
		this.chkIn = chkIn;
	}
	public String getChkOut() {
		return chkOut;
	}
	public void setChkOut(String chkOut) {
		this.chkOut = chkOut;
	}
}

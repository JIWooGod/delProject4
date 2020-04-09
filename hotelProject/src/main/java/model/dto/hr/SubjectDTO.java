package model.dto.hr;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class SubjectDTO implements Serializable {
	Long subjNo;
	String subjName;
	String subjCnt;
	String subjGroup;
	Long subjDay;
	Long subjTime;
	String subjOrigin;
	String subjFileSize;
	String subjStore;
	Timestamp subjRegDate;
	
	public Timestamp getSubjRegDate() {
		return subjRegDate;
	}
	public void setSubjRegDate(Timestamp subjRegDate) {
		this.subjRegDate = subjRegDate;
	}
	public String getSubjOrigin() {
		return subjOrigin;
	}
	public void setSubjOrigin(String subjOrigin) {
		this.subjOrigin = subjOrigin;
	}
	public String getSubjFileSize() {
		return subjFileSize;
	}
	public void setSubjFileSize(String subjFileSize) {
		this.subjFileSize = subjFileSize;
	}
	public String getSubjStore() {
		return subjStore;
	}
	public void setSubjStore(String subjStore) {
		this.subjStore = subjStore;
	}
	public Long getSubjNo() {
		return subjNo;
	}
	public void setSubjNo(Long subjNo) {
		this.subjNo = subjNo;
	}
	public String getSubjName() {
		return subjName;
	}
	public void setSubjName(String subjName) {
		this.subjName = subjName;
	}
	public String getSubjCnt() {
		return subjCnt;
	}
	public void setSubjCnt(String subjCnt) {
		this.subjCnt = subjCnt;
	}
	public String getSubjGroup() {
		return subjGroup;
	}
	public void setSubjGroup(String subjGroup) {
		this.subjGroup = subjGroup;
	}
	public Long getSubjDay() {
		return subjDay;
	}
	public void setSubjDay(Long subjDay) {
		this.subjDay = subjDay;
	}
	public Long getSubjTime() {
		return subjTime;
	}
	public void setSubjTime(Long subjTime) {
		this.subjTime = subjTime;
	}
}

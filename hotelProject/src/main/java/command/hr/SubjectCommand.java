package command.hr;

import org.springframework.web.multipart.MultipartFile;

public class SubjectCommand {
	Long tchNo;
	String subjName;
	MultipartFile subjVideo;
	String subjCnt;
	String subjGroup;
	Long subjDay;
	Long subjNum;
	
	public Long getSubjNum() {
		return subjNum;
	}
	public void setSubjNum(Long subjNum) {
		this.subjNum = subjNum;
	}
	public Long getSubjDay() {
		return subjDay;
	}
	public void setSubjDay(Long subjDay) {
		this.subjDay = subjDay;
	}
	public String getSubjGroup() {
		return subjGroup;
	}
	public void setSubjGroup(String subjGroup) {
		this.subjGroup = subjGroup;
	}
	public Long getTchNo() {
		return tchNo;
	}
	public void setTchNo(Long tchNo) {
		this.tchNo = tchNo;
	}
	public String getSubjName() {
		return subjName;
	}
	public void setSubjName(String subjName) {
		this.subjName = subjName;
	}
	public MultipartFile getSubjVideo() {
		return subjVideo;
	}
	public void setSubjVideo(MultipartFile subjVideo) {
		this.subjVideo = subjVideo;
	}
	public String getSubjCnt() {
		return subjCnt;
	}
	public void setSubjCnt(String subjCnt) {
		this.subjCnt = subjCnt;
	}
}
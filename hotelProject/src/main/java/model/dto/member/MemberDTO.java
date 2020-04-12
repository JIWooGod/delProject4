package model.dto.member;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class MemberDTO implements Serializable{
	String memId;
	String memPw;
	String memName;
	String memEmail;
	String memAddr;
	String memTel;
	Timestamp memRegDt;
	String joinChk;
	String memIp;
	String memNo;
	String admin;
	
	public MemberDTO() {
		
	}

	public MemberDTO(String memId, String memPw, String memName, String memEmail, String memAddr, String memTel,
			Timestamp memRegDt, String joinChk, String memIp, String memNo, String admin) {
		super();
		this.memId = memId;
		this.memPw = memPw;
		this.memName = memName;
		this.memEmail = memEmail;
		this.memAddr = memAddr;
		this.memTel = memTel;
		this.memRegDt = memRegDt;
		this.joinChk = joinChk;
		this.memIp = memIp;
		this.memNo = memNo;
		this.admin = admin;
	}

	public String getAdmin() {
		return admin;
	}

	public void setAdmin(String admin) {
		this.admin = admin;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getMemPw() {
		return memPw;
	}

	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemEmail() {
		return memEmail;
	}

	public void setMemEmail(String memEmail) {
		this.memEmail = memEmail;
	}

	public String getMemAddr() {
		return memAddr;
	}

	public void setMemAddr(String memAddr) {
		this.memAddr = memAddr;
	}

	public String getMemTel() {
		return memTel;
	}

	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}

	public Timestamp getMemRegDt() {
		return memRegDt;
	}

	public void setMemRegDt(Timestamp memRegDt) {
		this.memRegDt = memRegDt;
	}

	public String getJoinChk() {
		return joinChk;
	}

	public void setJoinChk(String joinChk) {
		this.joinChk = joinChk;
	}

	public String getMemIp() {
		return memIp;
	}

	public void setMemIp(String memIp) {
		this.memIp = memIp;
	}

	public String getMemNo() {
		return memNo;
	}

	public void setMemNo(String memNo) {
		this.memNo = memNo;
	}
	
	
}

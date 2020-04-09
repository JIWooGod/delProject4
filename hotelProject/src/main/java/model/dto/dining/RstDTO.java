package model.dto.dining;

import java.io.Serializable;

@SuppressWarnings("serial")
public class RstDTO implements Serializable {
	Long rstNo;
	String rstName;
	String rstAddr;
	String rstTel;
	String rstEmail;
	String rstImg;
	Long tblCount;
	
	public RstDTO() {
		
	}

	public RstDTO(Long rstNo, String rstName, String rstAddr, String rstTel, String rstEmail, String rstImg,
			Long tblCount) {
		this.rstNo = rstNo;
		this.rstName = rstName;
		this.rstAddr = rstAddr;
		this.rstTel = rstTel;
		this.rstEmail = rstEmail;
		this.rstImg = rstImg;
		this.tblCount = tblCount;
	}

	public Long getRstNo() {
		return rstNo;
	}

	public void setRstNo(Long rstNo) {
		this.rstNo = rstNo;
	}

	public String getRstName() {
		return rstName;
	}

	public void setRstName(String rstName) {
		this.rstName = rstName;
	}

	public String getRstAddr() {
		return rstAddr;
	}

	public void setRstAddr(String rstAddr) {
		this.rstAddr = rstAddr;
	}

	public String getRstTel() {
		return rstTel;
	}

	public void setRstTel(String rstTel) {
		this.rstTel = rstTel;
	}

	public String getRstEmail() {
		return rstEmail;
	}

	public void setRstEmail(String rstEmail) {
		this.rstEmail = rstEmail;
	}

	public String getRstImg() {
		return rstImg;
	}

	public void setRstImg(String rstImg) {
		this.rstImg = rstImg;
	}

	public Long getTblCount() {
		return tblCount;
	}

	public void setTblCount(Long tblCount) {
		this.tblCount = tblCount;
	}
	
}

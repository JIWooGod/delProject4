package model.dto.hr;

import java.io.Serializable;

@SuppressWarnings("serial")
public class JobPositionDTO implements Serializable{
	String positNo;
	Long employmentSal;
	String employmentPosi;
	
	public String getPositNo() {
		return positNo;
	}
	public void setPositNo(String positNo) {
		this.positNo = positNo;
	}
	public Long getEmploymentSal() {
		return employmentSal;
	}
	public void setEmploymentSal(Long employmentSal) {
		this.employmentSal = employmentSal;
	}
	public String getEmploymentPosi() {
		return employmentPosi;
	}
	public void setEmploymentPosi(String employmentPosi) {
		this.employmentPosi = employmentPosi;
	}
}
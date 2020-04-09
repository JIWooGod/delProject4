package model.dto.hr;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class EmploymentDTO implements Serializable {
	Long employmentNo;
	Long empNo;
	String employmentSign;
	Timestamp employmentDate;
	String positNo;
	
	JobPositionDTO posit = new JobPositionDTO();
	
	public JobPositionDTO getPosit() {
		return posit;
	}
	public void setPosit(JobPositionDTO posit) {
		this.posit = posit;
	}
	public Long getEmploymentNo() {
		return employmentNo;
	}
	public void setEmploymentNo(Long employmentNo) {
		this.employmentNo = employmentNo;
	}
	public Long getEmpNo() {
		return empNo;
	}
	public void setEmpNo(Long empNo) {
		this.empNo = empNo;
	}
	public String getEmploymentSign() {
		return employmentSign;
	}
	public void setEmploymentSign(String employmentSign) {
		this.employmentSign = employmentSign;
	}
	public String getPositNo() {
		return positNo;
	}
	public void setPositNo(String positNo) {
		this.positNo = positNo;
	}
	public Timestamp getEmploymentDate() {
		return employmentDate;
	}
	public void setEmploymentDate(Timestamp employmentDate) {
		this.employmentDate = employmentDate;
	}
}

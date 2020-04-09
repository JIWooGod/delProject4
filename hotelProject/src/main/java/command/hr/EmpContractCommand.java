package command.hr;

public class EmpContractCommand {
	Long paperNo;
	Long empNo;
	String name;
	String salary;
	String position;
	String image;
	
	public Long getPaperNo() {
		return paperNo;
	}
	public void setPaperNo(Long paperNo) {
		this.paperNo = paperNo;
	}
	public Long getEmpNo() {
		return empNo;
	}
	public void setEmpNo(Long empNo) {
		this.empNo = empNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSalary() {
		return salary;
	}
	public void setSalary(String salary) {
		this.salary = salary;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
}

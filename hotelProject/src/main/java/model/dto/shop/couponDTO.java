package model.dto.shop;

public class couponDTO {
	String cCode;

	public String getcCode() {
		return cCode;
	}

	public void setcCode(String cCode) {
		this.cCode = cCode;
	}

	public couponDTO(String cCode) {
		super();
		this.cCode = cCode;
	}
	public couponDTO() {}
}

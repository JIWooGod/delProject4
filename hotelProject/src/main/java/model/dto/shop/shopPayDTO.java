package model.dto.shop;

public class shopPayDTO {
	Integer odNo;
	Integer payNo;
	Integer shipNo;
	String shipMtd;
	String shipAddr;
	Integer odPrice;
	String memId;
	String chkIn;
	Integer rmNo;
	String shipTel;
	String odName;
	
	public String getOdName() {
		return odName;
	}

	public void setOdName(String odName) {
		this.odName = odName;
	}

	public String getShipTel() {
		return shipTel;
	}

	public void setShipTel(String shipTel) {
		this.shipTel = shipTel;
	}

	public Integer getRmNo() {
		return rmNo;
	}

	public void setRmNo(Integer rmNo) {
		this.rmNo = rmNo;
	}

	public shopPayDTO() {} ;
	
	public Integer getOdNo() {
		return odNo;
	}
	public void setOdNo(Integer odNo) {
		this.odNo = odNo;
	}
	public Integer getPayNo() {
		return payNo;
	}
	public void setPayNo(Integer payNo) {
		this.payNo = payNo;
	}
	public Integer getShipNo() {
		return shipNo;
	}
	public void setShipNo(Integer shipNo) {
		this.shipNo = shipNo;
	}
	public String getShipMtd() {
		return shipMtd;
	}
	public void setShipMtd(String shipMtd) {
		this.shipMtd = shipMtd;
	}
	public String getShipAddr() {
		return shipAddr;
	}
	public void setShipAddr(String shipAddr) {
		this.shipAddr = shipAddr;
	}
	public Integer getOdPrice() {
		return odPrice;
	}
	public void setOdPrice(Integer odPrice) {
		this.odPrice = odPrice;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getChkIn() {
		return chkIn;
	}
	public void setChkIn(String chkIn) {
		this.chkIn = chkIn;
	}
	public shopPayDTO(Integer odNo, Integer payNo, Integer shipNo, String shipMtd, String shipAddr, Integer odPrice,
			String memId, String chkIn, Integer rmNo) {
		super();
		this.odNo = odNo;
		this.payNo = payNo;
		this.shipNo = shipNo;
		this.shipMtd = shipMtd;
		this.shipAddr = shipAddr;
		this.odPrice = odPrice;
		this.memId = memId;
		this.chkIn = chkIn;
		this.rmNo = rmNo;
	}
	
	
	
}

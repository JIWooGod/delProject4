package model.dto.dining;

import java.io.Serializable;

@SuppressWarnings("serial")
public class dReservationDTO implements Serializable {
	Long rstNo;
	String fromdate;
	String resTime;
	Long resMans;
	String resName;
	String resTel;
	String emailVal1;
	String emailVal2;
	String resCnt;
	Long menuNo;
	Long rstTbl;
	String menuName;
	String menuImg;
	Long menuPrice;
	String memId;
	Integer PayNo;
	String rstName;
	
	public dReservationDTO(Long rstNo, String fromdate, String resTime, Long resMans, String resName, String resTel,
			String emailVal1, String emailVal2, String resCnt, Long menuNo, Long rstTbl, String menuName,
			String menuImg, Long menuPrice, String memId, Integer payNo, String rstName) {
		super();
		this.rstNo = rstNo;
		this.fromdate = fromdate;
		this.resTime = resTime;
		this.resMans = resMans;
		this.resName = resName;
		this.resTel = resTel;
		this.emailVal1 = emailVal1;
		this.emailVal2 = emailVal2;
		this.resCnt = resCnt;
		this.menuNo = menuNo;
		this.rstTbl = rstTbl;
		this.menuName = menuName;
		this.menuImg = menuImg;
		this.menuPrice = menuPrice;
		this.memId = memId;
		PayNo = payNo;
		this.rstName = rstName;
	}

	public String getRstName() {
		return rstName;
	}

	public void setRstName(String rstName) {
		this.rstName = rstName;
	}

	public dReservationDTO() {
		
	}



	public Long getRstNo() {
		return rstNo;
	}

	public void setRstNo(Long rstNo) {
		this.rstNo = rstNo;
	}

	public String getFromdate() {
		return fromdate;
	}

	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}

	public String getResTime() {
		return resTime;
	}

	public void setResTime(String resTime) {
		this.resTime = resTime;
	}

	public Long getResMans() {
		return resMans;
	}

	public void setResMans(Long resMans) {
		this.resMans = resMans;
	}

	public String getResName() {
		return resName;
	}

	public void setResName(String resName) {
		this.resName = resName;
	}

	public String getResTel() {
		return resTel;
	}

	public void setResTel(String resTel) {
		this.resTel = resTel;
	}

	public String getEmailVal1() {
		return emailVal1;
	}

	public void setEmailVal1(String emailVal1) {
		this.emailVal1 = emailVal1;
	}

	public String getEmailVal2() {
		return emailVal2;
	}

	public void setEmailVal2(String emailVal2) {
		this.emailVal2 = emailVal2;
	}

	public String getResCnt() {
		return resCnt;
	}

	public void setResCnt(String resCnt) {
		this.resCnt = resCnt;
	}

	public Long getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(Long menuNo) {
		this.menuNo = menuNo;
	}

	public Long getRstTbl() {
		return rstTbl;
	}

	public void setRstTbl(Long rstTbl) {
		this.rstTbl = rstTbl;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public String getMenuImg() {
		return menuImg;
	}

	public void setMenuImg(String menuImg) {
		this.menuImg = menuImg;
	}

	public Long getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(Long menuPrice) {
		this.menuPrice = menuPrice;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public Integer getPayNo() {
		return PayNo;
	}

	public void setPayNo(Integer payNo) {
		PayNo = payNo;
	}

}

package model.dto.dining;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Menu3DTO implements Serializable {
	Long menuNo;
	Long rstNo;
	String menuName;
	Long menuPrice;
	String menuCnt;
	String menuImg;
	String rstName;
	
	public Menu3DTO() {
		
	}

	
	public Menu3DTO(Long menuNo, Long rstNo, String menuName, Long menuPrice, String menuCnt, String menuImg,
			String rstName) {
		this.menuNo = menuNo;
		this.rstNo = rstNo;
		this.menuName = menuName;
		this.menuPrice = menuPrice;
		this.menuCnt = menuCnt;
		this.menuImg = menuImg;
		this.rstName = rstName;
	}


	public Long getMenuNo() {
		return menuNo;
	}

	public void setMenuNo(Long menuNo) {
		this.menuNo = menuNo;
	}

	public Long getRstNo() {
		return rstNo;
	}

	public void setRstNo(Long rstNo) {
		this.rstNo = rstNo;
	}

	public String getMenuName() {
		return menuName;
	}

	public void setMenuName(String menuName) {
		this.menuName = menuName;
	}

	public Long getMenuPrice() {
		return menuPrice;
	}

	public void setMenuPrice(Long menuPrice) {
		this.menuPrice = menuPrice;
	}

	public String getMenuCnt() {
		return menuCnt;
	}

	public void setMenuCnt(String menuCnt) {
		this.menuCnt = menuCnt;
	}

	public String getMenuImg() {
		return menuImg;
	}

	public void setMenuImg(String menuImg) {
		this.menuImg = menuImg;
	}

	public String getRstName() {
		return rstName;
	}

	public void setRstName(String rstName) {
		this.rstName = rstName;
	}
	
	
}

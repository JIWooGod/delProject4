package command.dining;

import org.springframework.web.multipart.MultipartFile;

public class MenuCommand {
	Long menuNo;
	Long rstNo;
	String menuName;
	Long menuPrice;
	String menuCnt;
	MultipartFile [] menuImg;
	
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
	public MultipartFile[] getMenuImg() {
		return menuImg;
	}
	public void setMenuImg(MultipartFile[] menuImg) {
		this.menuImg = menuImg;
	}
	
}

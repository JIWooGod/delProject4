package model.dto.shop;

public class cartDTO {
	private Integer cartNo;
	private String memId;
	private String goodsCode;
	private Integer cartQty;
	private Integer cartPrice;
	private String goodsName;
	private Integer gAvg;
	private Integer aSum;

	shopDTO shop; 
	
	public cartDTO() {}
	
	

	public cartDTO(Integer cartNo, String memId, String goodsCode, Integer cartQty, Integer cartPrice, String goodsName, Integer gAvg, Integer aSum ) {
		super();
		this.cartNo = cartNo;
		this.memId = memId;
		this.goodsCode = goodsCode;
		this.cartQty = cartQty;
		this.cartPrice = cartPrice;
		this.goodsName = goodsName;
		this.gAvg = gAvg;
		this.aSum = aSum;
		shop = new shopDTO();
		
	}
	
	
	

	public shopDTO getShop() {
		return shop;
	}

	public void setShop(shopDTO shop) {
		this.shop = shop;
	}

	public Integer getCartNo() {
		return cartNo;
	}
	public void setCartNo(Integer cartNo) {
		this.cartNo = cartNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getGoodsCode() {
		return goodsCode;
	}
	public void setGoodsCode(String goodsCode) {
		this.goodsCode = goodsCode;
	}
	public Integer getCartQty() {
		return cartQty;
	}
	public void setCartQty(Integer cartQty) {
		this.cartQty = cartQty;
	}
	public Integer getCartPrice() {
		return cartPrice;
	}
	public void setCartPrice(Integer cartPrice) {
		this.cartPrice = cartPrice;
	}
	
	public String getGoodsName() {
		return goodsName;
	}

	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	

	public Integer getgAvg() {
		return gAvg;
	}

	public void setgAvg(Integer gAvg) {
		this.gAvg = gAvg;
	}



	public Integer getaSum() {
		return aSum;
	}



	public void setaSum(Integer aSum) {
		this.aSum = aSum;
	}

	
	
		
}

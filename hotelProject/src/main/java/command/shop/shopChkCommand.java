package command.shop;

import com.sun.jmx.snmp.Timestamp;

public class shopChkCommand {
	Integer payPrice;
	String goodsName;
	Integer cartQty;
	String memName;
	String memAddr;
	String memTel;
	String shipName;
	Timestamp rmbkChkIn;
	Timestamp rmbkChkOut;
	public Integer getPayPrice() {
		return payPrice;
	}
	public void setPayPrice(Integer payPrice) {
		this.payPrice = payPrice;
	}
	public String getGoodsName() {
		return goodsName;
	}
	public void setGoodsName(String goodsName) {
		this.goodsName = goodsName;
	}
	public Integer getCartQty() {
		return cartQty;
	}
	public void setCartQty(Integer cartQty) {
		this.cartQty = cartQty;
	}
	public String getMemName() {
		return memName;
	}
	public void setMemName(String memName) {
		this.memName = memName;
	}
	public String getMemAddr() {
		return memAddr;
	}
	public void setMemAddr(String memAddr) {
		this.memAddr = memAddr;
	}
	public String getMemTel() {
		return memTel;
	}
	public void setMemTel(String memTel) {
		this.memTel = memTel;
	}
	public String getShipName() {
		return shipName;
	}
	public void setShipName(String shipName) {
		this.shipName = shipName;
	}
	public Timestamp getRmbkChkIn() {
		return rmbkChkIn;
	}
	public void setRmbkChkIn(Timestamp rmbkChkIn) {
		this.rmbkChkIn = rmbkChkIn;
	}
	public Timestamp getRmbkChkOut() {
		return rmbkChkOut;
	}
	public void setRmbkChkOut(Timestamp rmbkChkOut) {
		this.rmbkChkOut = rmbkChkOut;
	}
	
	
}

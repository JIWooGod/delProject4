package command.shop;

import org.springframework.format.annotation.DateTimeFormat;

import com.sun.jmx.snmp.Timestamp;

public class shopChkCommand {

private	String payPrice;
private	String goodsName;
private	Integer cartQty;
private	String memName;
private	String memAddr;
private	String memTel;
private	String shipName;
private	String rmbkChkIn;
private	String rmbkChkOut;

public String getPayPrice() {
	return payPrice;
}
public void setPayPrice(String payPrice) {
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
public String getRmbkChkIn() {
	return rmbkChkIn;
}
public void setRmbkChkIn(String rmbkChkIn) {
	this.rmbkChkIn = rmbkChkIn;
}
public String getRmbkChkOut() {
	return rmbkChkOut;
}
public void setRmbkChkOut(String rmbkChkOut) {
	this.rmbkChkOut = rmbkChkOut;
}
	


	
	
	
}

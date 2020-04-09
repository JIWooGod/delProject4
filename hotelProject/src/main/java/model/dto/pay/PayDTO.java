package model.dto.pay;

import java.io.Serializable;
import java.sql.Timestamp;

@SuppressWarnings("serial")
public class PayDTO implements Serializable
{
	private Integer payNo;
	private String payPrice;
	private String PayMtd;
	private Timestamp payDate;
	private String payWho;
	
	public Integer getPayNo() {
		return payNo;
	}
	public void setPayNo(Integer payNo) {
		this.payNo = payNo;
	}
	public String getPayPrice() {
		return payPrice;
	}
	public void setPayPrice(String payPrice) {
		this.payPrice = payPrice;
	}
	public String getPayMtd() {
		return PayMtd;
	}
	public void setPayMtd(String payMtd) {
		PayMtd = payMtd;
	}
	public Timestamp getPayDate() {
		return payDate;
	}
	public void setPayDate(Timestamp payDate) {
		this.payDate = payDate;
	}
	public String getPayWho() {
		return payWho;
	}
	public void setPayWho(String payWho) {
		this.payWho = payWho;
	}
}

package com.javen.model;

public class PayType {
	
	private int payId;//支付方式id
	private String payName;//支付方式
	public int getPayId() {
		return payId;
	}
	public void setPayId(int payId) {
		this.payId = payId;
	}
	public String getPayName() {
		return payName;
	}
	public void setPayName(String payName) {
		this.payName = payName;
	}
}

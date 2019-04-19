package com.javen.model;

public class Project {

    private int p_id;//项目id
    private String p_name;//项目名
    private int area;//面积
    private String is_cad;//是否需要cad图纸
    private int day;//工期
    private int serviceId;//支付方式
    private String address;//地址
    private String tel;//联系方式
    private float price;//价格
    private int payId;//支付方式
    private String payName;//支付方式
    private String serviceName;//支付方式
    private String comment;//详情
    private String is_audit;//是否审核
    private String is_pay;//是否支付
    private String status;//是否完工
    private String u_id;

    public int getP_id() {
        return p_id;
    }
    public void setP_id(int p_id) {
        this.p_id = p_id;
    }
    public String getP_name() {
        return p_name;
    }
    public void setP_name(String p_name) {
        this.p_name = p_name;
    }
    public int getArea() {
        return area;
    }
    public void setArea(int area) {
        this.area = area;
    }
    public String getIs_cad() {
        return is_cad;
    }
    public void setIs_cad(String is_cad) {
        this.is_cad = is_cad;
    }
    public int getDay() {
        return day;
    }
    public void setDay(int day) {
        this.day = day;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getTel() {
        return tel;
    }
    public void setTel(String tel) {
        this.tel = tel;
    }
    public float getPrice() {
        return price;
    }
    public void setPrice(float price) {
        this.price = price;
    }
    public String getComment() {
        return comment;
    }
    public void setComment(String comment) {
        this.comment = comment;
    }
    @Override
    public String toString() {
        return "Project [p_id=" + p_id + ", p_name=" + p_name + ", area=" + area + ", is_cad=" + is_cad + ", day=" + day
                + ", address=" + address + ", tel=" + tel + ", price=" + price + ", comment=" + comment + "]";
    }
    public String getIs_audit() {
        return is_audit;
    }
    public void setIs_audit(String is_audit) {
        this.is_audit = is_audit;
    }
    public String getIs_pay() {
        return is_pay;
    }
    public void setIs_pay(String is_pay) {
        this.is_pay = is_pay;
    }
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public int getServiceId() {
		return serviceId;
	}
	public void setServiceId(int serviceId) {
		this.serviceId = serviceId;
	}
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
	public String getServiceName() {
		return serviceName;
	}
	public void setServiceName(String serviceName) {
		this.serviceName = serviceName;
	}
}

package com.bean;

public class UserBean {
	private String uname;
	private String password;
	private long mobile;
	private String address;
	public UserBean() {
		
	}
	public UserBean(String uname, String password, long mobile, String address) {
		super();
		this.uname = uname;
		this.password = password;
		this.mobile = mobile;
		this.address = address;
	}
	
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}

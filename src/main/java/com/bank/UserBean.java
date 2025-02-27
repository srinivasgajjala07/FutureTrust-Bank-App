package com.bank;

import java.io.Serializable;

@SuppressWarnings("serial")
public class UserBean implements Serializable{
	
	private  String name;
	private String email;
	private long phno;
	private String address;
	private double deposit;
	private String pword;
	private String accno;
	
	public String getAccno() {
		return accno;
	}
	public void setAccno(String accno) {
		this.accno = accno;
	}
	UserBean(){}
	@Override
	public String toString() {
		return "UserBean [name=" + name + ", email=" + email + ", phno=" + phno + ", address=" + address + ", deposit="
				+ deposit + ", pword=" + pword + ", accno=" + accno + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getPhno() {
		return phno;
	}
	public void setPhno(long phno) {
		this.phno = phno;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public double getDeposit() {
		return deposit;
	}
	public void setDeposit(double deposit) {
		this.deposit = deposit;
	}
	public String getPword() {
		return pword;
	}
	public void setPword(String pword) {
		this.pword = pword;
	}
	
}

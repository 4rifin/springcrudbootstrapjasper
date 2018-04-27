package com.springbootcrudbootstrap.bean;

import java.io.Serializable;

public class GuestBean implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = -1469843890982106105L;
	public long id;
	public String name;
	public String employment;
	public String address;
	
	
	public long getId() {
		return id;
	}
	public void setId(long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmployment() {
		return employment;
	}
	public void setEmployment(String employment) {
		this.employment = employment;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
}

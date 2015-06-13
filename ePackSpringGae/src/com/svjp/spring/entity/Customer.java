package com.svjp.spring.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name="tblCustomer")
public class Customer {

	@Id
	@GeneratedValue
	@Column(name="CustomerId")
	private long customerId;
	@Column(name="Firstname")
	private String firstName;
	@Column(name="Lastname")
	private String lastName;
	@Column(name="Customername")
	private String Customername;
	@Column(name="Password")
	private String password;
	@Column(name="DOB")
	private String dob;
	@Column(name="Age")
	private int age;
	@Column(name="Email")
	private String email;
	@Column(name="Address1")
	private String address1;
	@Column(name="Address2")
	private String address2;
	@Column(name="LandlineNo")
	private String landlineNo;
	@Column(name="MobileNo")
	private String mobileNo;
	@Column(name="isMobRegistered")
	private boolean isMobRegistered;
	
	public long getCustomerId() {
		return customerId;
	}
	public void setCustomerId(long customerId) {
		this.customerId = customerId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getCustomername() {
		return Customername;
	}
	public void setCustomername(String customername) {
		Customername = customername;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getLandlineNo() {
		return landlineNo;
	}
	public void setLandlineNo(String landlineNo) {
		this.landlineNo = landlineNo;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public boolean isMobRegistered() {
		return isMobRegistered;
	}
	public void setMobRegistered(boolean isMobRegistered) {
		this.isMobRegistered = isMobRegistered;
	}
	
	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", firstName="
				+ firstName + ", lastName=" + lastName + ", Customername="
				+ Customername + ", password=" + password + ", dob=" + dob
				+ ", age=" + age + ", email=" + email + ", address1="
				+ address1 + ", address2=" + address2 + ", landlineNo="
				+ landlineNo + ", mobileNo=" + mobileNo + ", isMobRegistered="
				+ isMobRegistered + "]";
	}
	
	
	
	
	
	
	
}

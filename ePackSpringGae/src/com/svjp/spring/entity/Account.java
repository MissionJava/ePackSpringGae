package com.svjp.spring.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="Account")
public class Account {

	@Id
	@GeneratedValue
	@Column(name="AccountID")
	private long AccountID;
	@Column(name="AccountNo")
	private String AccountNo;
//	@ManyToOne(targetEntity = Customer.class)
//	@JoinColumn(name="CustomerID")
	@Column(name="CustomerID")
	private long CustomerID;
	@Column(name="AccountType")
	private String AccountType;
	@Column(name="ActivationDate")
	private Date ActivationDate;
	@Column(name="isActive")
	private boolean isActive;
	public long getAccountID() {
		return AccountID;
	}
	public void setAccountID(long accountID) {
		AccountID = accountID;
	}
	public String getAccountNo() {
		return AccountNo;
	}
	public void setAccountNo(String accountNo) {
		AccountNo = accountNo;
	}
	public long getCustomerID() {
		return CustomerID;
	}
	public void setCustomerID(long customerID) {
		CustomerID = customerID;
	}
	public String getAccountType() {
		return AccountType;
	}
	public void setAccountType(String accountType) {
		AccountType = accountType;
	}
	public Date getActivationDate() {
		return ActivationDate;
	}
	public void setActivationDate(Date activationDate) {
		ActivationDate = activationDate;
	}
	public boolean isActive() {
		return isActive;
	}
	public void setActive(boolean isActive) {
		this.isActive = isActive;
	}
	@Override
	public String toString() {
		return "Account [AccountID=" + AccountID + ", AccountNo=" + AccountNo
				+ ", CustomerID=" + CustomerID + ", AccountType=" + AccountType
				+ ", ActivationDate=" + ActivationDate + ", isActive="
				+ isActive + "]";
	}
}

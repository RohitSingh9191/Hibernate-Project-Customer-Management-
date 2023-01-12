package com.hibernate;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customer
{
   @Id
   private int cid;
   private String firstname;
   private String lastname;
   private String address;
   private String phone;
   private String email;
   public Customer() {}
public Customer(int cid, String firstname, String lastname, String address, String phone, String email) {
	super();
	this.cid = cid;
	this.firstname = firstname;
	this.lastname = lastname;
	this.address = address;
	this.phone = phone;
	this.email = email;
}
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public String getFirstname() {
	return firstname;
}
public void setFirstname(String firstname) {
	this.firstname = firstname;
}
public String getLastname() {
	return lastname;
}
public void setLastname(String lastname) {
	this.lastname = lastname;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
   
}

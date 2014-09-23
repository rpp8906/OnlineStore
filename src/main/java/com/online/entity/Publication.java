package com.online.entity;


import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="PUBLICATIONS")
public class Publication implements Serializable {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int idPublication;
	private String title;
	private String state;
	private String postalCode;
	private String email;
	private String phone;
	private String contactName;
	private String available;
	private String minimunStay;
	private String roomsNumber;
	private String parking;
	private String sizeDepa;
	
	@Column(columnDefinition = "LONGBLOB")
	private String content;
	private Date publicationDate;
	private double priceMontly;
	private double priceYearly;
	
	
	
	
	//private List <String> services;
	
	
	public int getIdPublication() {
		return idPublication;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public void setIdPublication(int idPublication) {
		this.idPublication = idPublication;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getContactName() {
		return contactName;
	}
	public void setContactName(String contactName) {
		this.contactName = contactName;
	}
	public String getMinimunStay() {
		return minimunStay;
	}
	public void setMinimunStay(String minimunStay) {
		this.minimunStay = minimunStay;
	}
	public String getRoomsNumber() {
		return roomsNumber;
	}
	public void setRoomsNumber(String roomsNumber) {
		this.roomsNumber = roomsNumber;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getSizeDepa() {
		return sizeDepa;
	}
	public void setSizeDepa(String sizeDepa) {
		this.sizeDepa = sizeDepa;
	}
	/*public List<String> getServices() {
		return services;
	}
	public void setServices(List<String> services) {
		this.services = services;
	}*/
	
	
	public String getAvailable() {
		return available;
	}
	public void setAvailable(String available) {
		this.available = available;
	}
	public Date getPublicationDate() {
		return publicationDate;
	}
	public void setPublicationDate(Date publicationDate) {
		this.publicationDate = publicationDate;
	}
	public double getPriceMontly() {
		return priceMontly;
	}
	public void setPriceMontly(double priceMontly) {
		this.priceMontly = priceMontly;
	}
	public double getPriceYearly() {
		return priceYearly;
	}
	public void setPriceYearly(double priceYearly) {
		this.priceYearly = priceYearly;
	}
	
	
	
	
	
	
}

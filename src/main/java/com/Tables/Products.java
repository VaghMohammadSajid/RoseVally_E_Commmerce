package com.Tables;

import java.util.Date;
import java.util.Random;

import javax.persistence.*;

@Entity
@Table(name = "products")
public class Products {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "p_id")
	private int id;

	@Column(name = "p_name", unique = true)
	private String Pname;

	@Column(name = "p_details")
	private String details;

	@Column(name = "p_price")
	private double price;

	@Column(name = "p_date")
	@Temporal(TemporalType.DATE)
	private Date addedDate;

	@Column(name = "P_Image")
	@Lob
	private String pimage;

	public Products() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Products(String pname, String details, double price, Date addedDate, String pimage) {
		super();
		this.id = new Random().nextInt(100000);
		Pname = pname;
		this.details = details;
		this.price = price;
		this.addedDate = addedDate;
		this.pimage = pimage;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPname() {
		return Pname;
	}

	public void setPname(String pname) {
		Pname = pname;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public Date getAddedDate() {
		return addedDate;
	}

	public void setAddedDate(Date addedDate) {
		this.addedDate = addedDate;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

}

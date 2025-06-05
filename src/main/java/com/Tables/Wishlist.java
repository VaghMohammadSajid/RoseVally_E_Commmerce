package com.Tables;

import javax.persistence.*;

@Entity
public class Wishlist {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Wid")
	private Long wid;

	@Column(name = "name")
	private String name;

	@Column(name = "price")
	private Double price;

	@Column(name = "quantity")
	private int quantity;

	@Lob
	@Column(name = "P_Image")
	private String pimage;

	@Column(name = "user_id")
	private Long userId;

	@Column(name = "prod_id")
	private Long prodId;

	// Default constructor
	public Wishlist() {
		super();
	}

	// Constructor without manually setting the id
	public Wishlist(String name, Double price, int quantity, String pimage, Long userId, Long prodId) {
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.pimage = pimage;
		this.userId = userId;
		this.prodId = prodId;
	}

	// Getters and Setters
	public Long getWid() {
		return wid;
	}

	public void setWid(Long wid) {
		this.wid = wid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getPimage() {
		return pimage;
	}

	public void setPimage(String pimage) {
		this.pimage = pimage;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
	}

	public Long getProdId() {
		return prodId;
	}

	public void setProdId(Long prodId) {
		this.prodId = prodId;
	}
}

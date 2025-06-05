package com.Tables;

import javax.persistence.*;

@Entity
@Table(name = "cart")
public class Cart {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Cid")
	private Long cid;

	@Column(name = "name")
	private String name;

	@Column(name = "price")
	private Double price;

	@Column(name = "quantity")
	private int quantity;

	@Lob
	@Column(name = "P_Image")
	private String pimage;

	// Default constructor
	public Cart() {
		super();
	}

	// Constructor without manually setting the id
	public Cart(String name, Double price, int quantity, String pimage) {
		this.name = name;
		this.price = price;
		this.quantity = quantity;
		this.pimage = pimage;
	}

	// Getters and Setters
	public Long getCid() {
		return cid;
	}

	public void setCid(Long cid) {
		this.cid = cid;
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
}

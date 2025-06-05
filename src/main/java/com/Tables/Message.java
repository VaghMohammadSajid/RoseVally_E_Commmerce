package com.Tables;

import java.util.Date;
import java.util.Random;

import javax.persistence.*;

@Entity
@Table(name = "message")
public class Message {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;

	@Column(name = "user_id")
	private Long userId;

	@Column(name = "name")
	private String name;

	@Column(name = "email")
	private String email;

	@Column(name = "number")
	private String number;

	@Column(name = "message")
	private String mess;

	@Temporal(TemporalType.DATE)
	private Date addDate;
	
	public Message() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	public Message(Long userId, String name, String email, String number, String mess, Date addDate) {
		super();
		this.id = new Random().nextLong();
		this.userId = userId;
		this.name = name;
		this.email = email;
		this.number = number;
		this.mess = mess;
		this.addDate = addDate;
	}


	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getUserId() {
		return userId;
	}

	public void setUserId(Long userId) {
		this.userId = userId;
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

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}


	public String getMess() {
		return mess;
	}


	public void setMess(String mess) {
		this.mess = mess;
	}


	public Date getAddDate() {
		return addDate;
	}


	public void setAddDate(Date addDate) {
		this.addDate = addDate;
	}


}

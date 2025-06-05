package com.Tables;

import java.util.Random;

import javax.persistence.*;
import org.hibernate.annotations.ColumnTransformer;

@Entity
@Table(name = "users")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;

	@Column(name = "name")
	private String name;

	@Column(name = "email", unique = true)
	private String email;

	@Column(name = "password")
	private String password;

	@Column(name="user_type",nullable = false)
	private String userType;
	
	//create constructor

	public Long getId() {
		return id;
	}
	
	public User(Long id, String name, String email, String password) {
		super();
		this.id = new Random().nextLong();
		this.name = name;
		this.email = email;
		this.password = password;
	}



	// Constructors, getters, setters
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void setId(Long id) {
		this.id = id;
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

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}
		
}

package com.desafioSefazPitang.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;

@Entity
public class Phone {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long idPhone;
	
	
	@ManyToOne(cascade = CascadeType.DETACH)
	@JoinColumn(name = "idUser",nullable = false)
	private User user;
	
	@Column(nullable = false, length = 11)
	private String number;
	
	@Column(nullable = false, length = 11)
	private String typePhone;
	
	
	public Phone() {
		
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getTypePhone() {
		return typePhone;
	}

	public void setTypePhone(String typePhone) {
		this.typePhone = typePhone;
	}

	public Long getIdPhone() {
		return idPhone;
	}

	public void setIdPhone(Long idPhone) {
		this.idPhone = idPhone;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Phone(String number, String typePhone) {
		super();
		this.number = number;
		this.typePhone = typePhone;
	}

	
	
}
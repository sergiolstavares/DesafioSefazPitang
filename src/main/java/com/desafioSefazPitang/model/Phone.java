package com.desafioSefazPitang.model;


import javax.persistence.Column;





public class Phone {
	
	
	@Column
	private String number;
	@Column
    private String typePhone;
    
    
    
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
	
	
	
    
    
    
}
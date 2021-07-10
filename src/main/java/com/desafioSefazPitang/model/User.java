package com.desafioSefazPitang.model;


import javax.persistence.*;
import javax.validation.constraints.Size;

@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long userId;


    @Column(nullable = false)
    @Size(min = 2,max = 50)
    private String name;

    @Column(nullable = false)
    @Size(min = 2,max = 100)
    private String email;

    @Column(nullable = false)
    @Size(min = 6,max = 50)
    private String password;



	
	public Long getUserId() {
		return userId;
	}

	public void setUserId(long id) {
		this.userId = id;
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

    
    
   
    
}

//package com.example.java.jpaconn;
//
//public class AccountDetail {
//
//}
package com.example.java.jpaconn;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import lombok.AllArgsConstructor;

@Entity
@AllArgsConstructor
public class AccountDetail {

//  @GeneratedValue(strategy=GenerationType.AUTO)
	
	
	@Id
	@Column(name = "name")
	private String name;
	@Column(name = "password")
	private String pass;
	@Column(name = "email")
	private String email;
	@Column(name = "contact")
	private String contact;
	
	public AccountDetail() {
	}

	public AccountDetail(String name, String email, String pass, String contact) {
		super();
		this.name = name;
		this.pass = pass;
		this.email = email;
		this.contact = contact;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}
	
}
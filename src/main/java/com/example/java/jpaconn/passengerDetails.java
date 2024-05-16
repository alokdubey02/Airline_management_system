package com.example.java.jpaconn;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;

@Entity
@AllArgsConstructor
public class passengerDetails {


	@Id
	@Column(name="pass_name")
	private String passName;
	@Column(name="originlocation")
	private String originLocation;
	@Column(name="destinationlocation")
	private String destinationLocation;
	@Column(name="amountFare")
	private String amountFare;
	@Column(name="passengers")
	private String passQuantity;
	
	public passengerDetails() {
		
	}
	
	public passengerDetails(String passName,String originlocation,String destinationlocaton,String pfare,String pPassengers ) {
		super();
//		this.passid=passid;
		this.passName=passName;
		this.originLocation=originlocation;
		this.destinationLocation=destinationlocaton;
		this.amountFare=pfare;
		this.passQuantity=pPassengers;
	}



	public String getPassName() {
		return passName;
	}

	public void setPassName(String passName) {
		this.passName = passName;
	}

	public String getOriginLocation() {
		return originLocation;
	}

	public void setOriginLocation(String originLocation) {
		this.originLocation = originLocation;
	}

	public String getDestinationLocation() {
		return destinationLocation;
	}

	public void setDestinationLocation(String destinationLocation) {
		this.destinationLocation = destinationLocation;
	}

	public String getAmountFare() {
		return amountFare;
	}

	public void setAmountFare(String amountFare) {
		this.amountFare = amountFare;
	}

	public String getPassQuantity() {
		return passQuantity;
	}

	public void setPassQuantity(String passQuantity) {
		this.passQuantity = passQuantity;
	}
	
}

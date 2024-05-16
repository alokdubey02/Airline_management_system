package com.example.java.jpaconn;

import org.springframework.data.jpa.repository.JpaRepository;

public interface passengerTicketInterface extends JpaRepository<passengerDetails, Long>{
	
//	passengerDetails findByName(String passName);

}

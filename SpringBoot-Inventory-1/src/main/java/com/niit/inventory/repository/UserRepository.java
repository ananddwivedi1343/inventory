package com.niit.inventory.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.niit.inventory.model.Customer;

public interface UserRepository extends JpaRepository<Customer, Long> {
	public Customer findByEmail(String email);

}

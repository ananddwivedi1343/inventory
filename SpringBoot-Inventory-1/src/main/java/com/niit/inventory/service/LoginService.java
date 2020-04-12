package com.niit.inventory.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.inventory.model.Customer;
import com.niit.inventory.repository.CustomerRepository;
import com.niit.inventory.repository.UserRepository;

@Service
@Transactional
public class LoginService {
	
	@Autowired
	private CustomerRepository crepo;
	
	@Autowired
	private UserRepository urepo;
	
	public void saveDealer(Customer customer)
	{
		crepo.save(customer);
	}
	
	public Customer findByEmail(String email)
	{
		return urepo.findByEmail(email);
	}


}

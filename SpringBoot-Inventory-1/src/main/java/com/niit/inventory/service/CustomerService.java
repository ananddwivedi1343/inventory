package com.niit.inventory.service;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.niit.inventory.model.Customer;
import com.niit.inventory.repository.CustomerRepository;

@Service
@Transactional
public class CustomerService 
{
	@Autowired
	private CustomerRepository repo1;
	
	public List<Customer> listAllCustomer()
	{
		return repo1.findAll();
	}
	
	public void delete(long id)
	{
		repo1.deleteById(id);
	}


	
}

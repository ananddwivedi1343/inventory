package com.niit.inventory.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.inventory.model.Customer;

import com.niit.inventory.service.CustomerService;


@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService service;
	
	
	@RequestMapping("/customers")
	public String viewCustomerList(Model model)
	{
		List<Customer> listCustomers=service.listAllCustomer();
		model.addAttribute("listCustomers",listCustomers);
		return "customer_list"; 
	}
	
	@RequestMapping("/delete_customer")
	public String deleteProduct(@RequestParam("id") int id) {
	service.delete(id);
	return "customer_list";
	}

}

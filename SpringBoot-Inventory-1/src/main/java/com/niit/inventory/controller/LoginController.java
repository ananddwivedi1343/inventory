package com.niit.inventory.controller;

import java.nio.charset.StandardCharsets;


import java.util.Base64;
import java.util.List;
import java.util.StringTokenizer;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.niit.inventory.model.Address;
import com.niit.inventory.model.Customer;
import com.niit.inventory.model.Product;
import com.niit.inventory.service.LoginService;
import com.niit.inventory.service.ProductService;

@Controller
public class LoginController{
	@Autowired
	private LoginService lservice;
	

	@Autowired
	private ProductService service;
	
	@RequestMapping("/")
	public String viewHomePage() {

	return "index";
	}
	
	@RequestMapping("admin")
	public String viewAdminPage() {

	return "welcome_admin";
	}
	
	@RequestMapping("/register")
	public String viewRegisterPage(Model model) {
	Customer customer = new Customer();
	model.addAttribute("customer", customer);
	return "register";

	}
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(HttpServletRequest req,@ModelAttribute("customer") Customer customer) {
	String s=req.getParameter("street");
	String c=req.getParameter("city");
	int p=Integer.parseInt(req.getParameter("pincode"));

	Address a=new Address();
	a.setStreet(s);
	a.setCity(c);
	a.setPincode(p);

	customer.setAddress(a);
	a.setCustomer(customer);
	lservice.saveDealer(customer);
	return "index";
	}
	
	@GetMapping("/login")
	public String showLoginForm(Model theModel) {
	Customer c = new Customer();
	theModel.addAttribute("customer", c);
	return "login";
	}
	
	@PostMapping("/loginCustomer")
	public ModelAndView loginDealer(HttpServletRequest req,@ModelAttribute("customer") Customer customer) {
		String email=req.getParameter("email");
		String pass=req.getParameter("password");
        String pass2=encryptPass(pass);
		
        StringTokenizer st = new StringTokenizer(email, "@");  //breaks the email id based on @ token
		String s2 = st.nextToken();
		
		 ModelAndView mav=null;
		 Customer c = lservice.findByEmail(email); //fetch record/object matching email id
		 
		 if(c==null) {
			 mav= new ModelAndView("login");
				mav.addObject("error", "User Doesn't Exists");
		 }
		 else  if(email.equals(c.getEmail()) && pass2.equals(c.getPassword()))
		 {
					 
		 req.getSession().setAttribute("user", s2);	
		 
		  mav = new ModelAndView("welcome_customer");
		 mav.addObject("customer", c);
		 
		 List<Product> listProducts = service.listAll();
		    mav.addObject("listProducts", listProducts);
	     		    
		 } 
		 
		 else
		 {mav= new ModelAndView("login");
			mav.addObject("error", "Invalid Username or Password");
		 }
		 
		 return mav;
	}
	
	private String encryptPass(String pass) {
		Base64.Encoder encoder = Base64.getEncoder();
		String normalString = pass;
		String encodedString = encoder.encodeToString(
	    normalString.getBytes(StandardCharsets.UTF_8) );
		return encodedString;
	}
	@GetMapping("/logout")
	public String logout(HttpServletRequest req) {
	req.getSession().invalidate();
	return "index";
	}





}

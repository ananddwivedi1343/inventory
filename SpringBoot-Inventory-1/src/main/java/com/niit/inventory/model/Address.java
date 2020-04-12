package com.niit.inventory.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="address")
public class Address 
{
	@Id  
    @GeneratedValue(strategy=GenerationType.IDENTITY) 
	private Long addressId;  
	
	private String street;
	private String city;
	private int pincode;
	
	
	    @OneToOne
	    @JoinColumn(name = "customer_id")
	    private Customer customer;


		public Address() {
			
		}


		


		public Long getAddressId() {
			return addressId;
		}





		public void setAddressId(Long addressId) {
			this.addressId = addressId;
		}





		public String getStreet() {
			return street;
		}


		public void setStreet(String street) {
			this.street = street;
		}


		public String getCity() {
			return city;
		}


		public void setCity(String city) {
			this.city = city;
		}


		public int getPincode() {
			return pincode;
		}


		public void setPincode(int pincode) {
			this.pincode = pincode;
		}





		public Customer getCustomer() {
			return customer;
		}





		public void setCustomer(Customer customer) {
			this.customer = customer;
		}


		
	    

}

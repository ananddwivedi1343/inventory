package com.niit.inventory;


import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;
import org.springframework.ui.Model;

import com.niit.inventory.controller.LoginController;
import com.niit.inventory.service.LoginService;

public class LoginControllerTest 
{

	@InjectMocks
	LoginController loginController;
	
	@Mock
	private LoginService lservice;
	
	@Spy
	Model model;
	
	@Before
	public void init()
	{
		MockitoAnnotations.initMocks(this);
	}
	
	@Test
	public void viewRegisterPageTest()
	{
		Assert.assertEquals(loginController.viewRegisterPage(model),"register");
	}
}

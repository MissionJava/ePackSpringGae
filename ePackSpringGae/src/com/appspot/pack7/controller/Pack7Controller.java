package com.appspot.pack7.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;




@Controller
@RequestMapping("/pack7")
public class Pack7Controller {
	
/*	@Autowired(required=true)
	private LoginService loginService;
	
	@Autowired(required = true)
	private CustomerService customerService;
*/
	@RequestMapping(method = RequestMethod.GET)
	public String getMovie() {
		/*
		 * return to jsp page, configured in mvc-dispatcher-servlet.xml, view
		 * resolver
		 */
		return "pack7";
	}
}
package com.appspot.pack7.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/about")
public class AboutController {

	@RequestMapping(method = RequestMethod.GET)
	public String getMovie() {
		/*
		 * return to jsp page, configured in mvc-dispatcher-servlet.xml, view
		 * resolver
		 */
		return "about";
	}
}
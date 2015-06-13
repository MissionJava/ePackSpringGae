package com.appspot.pack7.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/sendparcel")
public class SendParcelController {

	@RequestMapping(method = RequestMethod.GET)
	public String getMovie() {
		/*
		 * return to jsp page, configured in mvc-dispatcher-servlet.xml, view
		 * resolver
		 */
		return "sendparcel";
	}
	
	@RequestMapping(value="/bookparcel", method = RequestMethod.POST)
	public String bookParcel(Model model, HttpServletRequest request,HttpServletResponse response) {
		
		//String parcelBookingId = request.getParameter("parcelBookingId");
		model.addAttribute("sendparcelBookingId", "sendparcelBookingId");
		model.addAttribute("sendParcelDetails", "Mumbai");
		
		return "sendparcel";
	}
}
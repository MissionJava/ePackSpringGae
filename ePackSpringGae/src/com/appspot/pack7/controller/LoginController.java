package com.appspot.pack7.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLoginForm() {
		System.out.println("in showLoginForm");
		return "login";
	}

	@RequestMapping(value = "/authenticate", method = RequestMethod.POST)
	public String validateCustomer(Model model, HttpServletRequest request,
			HttpServletResponse response) {

		String userName = request.getParameter("username");
		String password = request.getParameter("password");

		if (userName.equals(password)) {
			HttpSession session = request.getSession();
			session.setAttribute("userName", userName);

			model.addAttribute("userName", userName);
			return "addressdetails";
		}
		return "login";
	}

}

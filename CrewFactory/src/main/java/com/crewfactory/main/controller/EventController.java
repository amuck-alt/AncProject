package com.crewfactory.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EventController {
	
	@GetMapping({"/popup.do"})
	String popup (HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		return "popup";
	}

	
}

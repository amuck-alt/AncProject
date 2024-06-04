package com.crewfactory.main.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EducationController {
	
	@RequestMapping(value="/education/keoz.do")
	String keoz(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/keoz";
	}
	
	@RequestMapping(value="/education/ko.do")
	String ko(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/ko";
	}
	
	@RequestMapping(value="/education/os.do")
	String os(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "education/os";
	}
	
	@RequestMapping(value="/education/prvlesson.do")
	String prvlesson (Model model){
		model.addAttribute("message", "Hellow World");		
		return "education/prvlesson";
	}
	
	@RequestMapping(value="/education/steward.do")
	String steward (Model model){
		model.addAttribute("message", "Hellow World");		
		return "education/steward";
	}
}
package com.crewfactory.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.AuthDomain;
import com.crewfactory.main.service.AuthService;

@Controller
public class AdminAuthController {
	
	@Autowired
	AuthService as;
	
	@RequestMapping(value="/mng/auth/Auth.do", method=RequestMethod.GET)
	public String init(Model model) throws Exception {
		model.addAttribute("result", as.select() );
		return "/mng/auth/AuthList";
	}
	
	@RequestMapping(value="/mng/auth/AuthWrite.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/mng/auth/AuthWrite";
	}
	
	@RequestMapping(value="/mng/auth/AuthInsert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute("@manager") AuthDomain ad) throws Exception {
		as.insert(ad);
		return "redirect:/mng/auth/Auth.do";
	}
	
	@RequestMapping(value="/mng/auth/AuthView.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", as.view(idx));			
		return "/mng/auth/AuthView";
	}
	
	@RequestMapping(value="/mng/auth/AuthUpdate.do", method=RequestMethod.POST)
	public String update(@ModelAttribute("@manager") AuthDomain ad) throws Exception {
		as.update(ad);
		return "redirect:/mng/auth/Auth.do";
	}
	
	@RequestMapping(value="/mng/auth/AuthDelete.do", method=RequestMethod.GET)
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		as.delete(idx);
		return "redirect:/mng/auth/Auth.do";
	}	

}

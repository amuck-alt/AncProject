package com.crewfactory.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.VariousDomain;
import com.crewfactory.main.service.VariousService;

@Controller
public class AdminVariousController {
	
	@Autowired
	VariousService service;
	
	@RequestMapping(value="/mng/various.do", method=RequestMethod.GET)
	public String init(Model model) throws Exception {
		model.addAttribute("result", service.select() );
		return "/mng/bbs/VariousList";
	}
	
	@RequestMapping(value="/mng/various/write.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/mng/bbs/VariousWrite";
	}
	
	@RequestMapping(value="/mng/various/insert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute("@form") VariousDomain domain) throws Exception {
		service.insert(domain);
		return "redirect:/mng/various";
	}
	
	@RequestMapping(value="/mng/various/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		return "/mng/bbs/VariousView";
	}
	
	@RequestMapping(value="/mng/various/update.do", method=RequestMethod.POST)
	public String update(@ModelAttribute("@form") VariousDomain domain) throws Exception {
		service.update(domain);
		return "redirect:/mng/various";
	}
	
	@RequestMapping(value="/mng/various/delete.do", method=RequestMethod.GET)
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/mng/various";
	}

}

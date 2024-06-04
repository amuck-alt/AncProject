package com.crewfactory.main.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.PressDomain;
import com.crewfactory.main.service.PressService;

@Controller
public class AdminPressController {
	
	@Autowired
	PressService service;
	
	@RequestMapping(value="/mng/news.do", method=RequestMethod.GET)
	public String init(@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		model.addAttribute("result", service.selectAll() );
		return "/mng/bbs/NewsList";
	}
	
	@RequestMapping(value="/mng/news/write.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/mng/bbs/NewsWrite";
	}
	
	@RequestMapping(value="/mng/news/insert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute("@form") PressDomain domain) throws Exception {
		service.insert(domain);
		return "redirect:/mng/news.do";
	}
	
	@RequestMapping(value="/mng/news/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		return "/mng/bbs/NewsView";
	}
	
	@RequestMapping(value="/mng/news/update.do", method=RequestMethod.POST)
	public String update(@ModelAttribute("@form") PressDomain domain) throws Exception {
		service.update(domain);
		return "redirect:/mng/news.do";
	}
	
	@RequestMapping(value="/mng/news/delete.do", method=RequestMethod.GET)
	public String delete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/mng/news.do";
	}

}

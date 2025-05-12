package com.crewfactory.main.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.InterviewDomain;
import com.crewfactory.main.service.InterviewService;

@Controller
public class AdminInterviewController {
	
	@Autowired
	InterviewService service;
	
	@RequestMapping(value="/mng/interview.do", method=RequestMethod.GET)
	public String init(Model model) throws Exception {
		model.addAttribute("result", service.select() );
		return "/mng/bbs/InterviewList";
	}
	
	@RequestMapping(value="/mng/interview/write.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/mng/bbs/InterviewWrite";
	}
	
	@RequestMapping(value="/mng/interview/insert.do", method=RequestMethod.POST)
	public String insert(@ModelAttribute("@form") InterviewDomain domain) throws Exception {
		service.insert(domain);
		return "redirect:/mng/interview";
	}
	
	@RequestMapping(value="/mng/interview/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.view(idx));			
		return "/mng/bbs/InterviewView";
	}
	
	@RequestMapping(value="/mng/interview/update.do", method=RequestMethod.POST)
	public String memupdate(@ModelAttribute("@form") InterviewDomain domain) throws Exception {
		service.update(domain);
		return "redirect:/mng/interview.do";
	}
	
	@RequestMapping(value="/mng/interview/delete.do", method=RequestMethod.GET)
	public String memdelete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/mng/interview.do";
	}

}

package com.crewfactory.main.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crewfactory.main.domain.IPBlockDomain;
import com.crewfactory.main.domain.VanalyzerDomain;
import com.crewfactory.main.service.IPBlockService;

@Controller
public class IPBlockController {
	
	@Autowired
	IPBlockService ipblock;
	
	@RequestMapping(value="/manager/ipblock.do", method=RequestMethod.GET)
	String ipblok (Model model) throws Exception {
		model.addAttribute("list", ipblock.select());		
		return "/admin/ipblock/list";
	}
	
	@RequestMapping(value="/manager/ipblock/write.do")
	String write (Model model) {
		model.addAttribute("message", "Hellow World");		
		return "/admin/ipblock/write";
	}
	
	@RequestMapping(value="/manager/ipblock/view.do", method=RequestMethod.GET)
	String view (@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", ipblock.view(idx));
		return "/admin/ipblock/view";
	}
	
	@RequestMapping(value="/manager/ipblock/insert.do", method=RequestMethod.POST)
	String insert (@ModelAttribute("@form") IPBlockDomain domain) throws Exception {
		ipblock.insert(domain);
		return "redirect:/manager/ipblock.do";
	}
	
	@RequestMapping(value="/manager/ipblock/update.do", method=RequestMethod.POST)
	String update (@ModelAttribute("@form") IPBlockDomain domain) throws Exception {
		ipblock.update(domain);
		return "redirect:/manager/ipblock.do";
	}
	
	@RequestMapping(value="/manager/ipblock/delete.do", method=RequestMethod.GET)
	String delete (@RequestParam(value="idx") int idx, Model model) throws Exception {
		ipblock.delete(idx);
		return "redirect:/manager/ipblock.do";
	}
}

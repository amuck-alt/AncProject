package com.crewfactory.main.controller;

import java.util.HashMap;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.crewfactory.main.domain.CounselDomain;
import com.crewfactory.main.service.CounselService;

@Controller
public class CounselController {
	
	@Autowired
	CounselService service;
	
	@PostMapping("/counsel.do")
	public String fast (HttpServletRequest request, @ModelAttribute("@counsel") CounselDomain cd, Model model) throws Exception {
		String reurl = request.getParameter("reurl");
		if (reurl.isEmpty()) {
			reurl = "/";
		}
		
		String strName = cd.getName();
		String strAge = cd.getAge();
		String strPhone = cd.getPhone();
		
		if(isKorChar(strName) && isNumberic(strPhone) && isNumberic(strAge)) {
			service.insert(cd);
			return "redirect:"+reurl+"?result=ok";
		} else {
			return "redirect:/counsel/fail.do";
		}
			
	}
	
	@PostMapping("/counsel/specclassok.do")
	public String specclassdo (HttpServletRequest request, @ModelAttribute("@specclass") CounselDomain cd, Model model) throws Exception {
		String reurl = request.getParameter("reurl");
		if (reurl.isEmpty()) {
			reurl = "/";
		}
		String strName = cd.getName();
		String strAge = cd.getAge();
		String strPhone = cd.getPhone();
		
		if(isKorChar(strName) && isNumberic(strPhone) && isNumberic(strAge)) {
			service.insert(cd);
			return "redirect:"+reurl+"?result=ok";
		} else {
			return "redirect:/counsel/fail.do";
		}		
	}
	
	@ResponseBody
	@PostMapping("/quick/counsel.do")
	public void quick (@RequestBody HashMap<String, Object> map) throws Exception {
		String regip = map.get("regip").toString();
		String phone = map.get("phone").toString();
		String age = map.get("age").toString();
		String name = map.get("name").toString();
		String hopse = map.get("hopse").toString();
		String gubun = map.get("gubun").toString();
		String stat = map.get("stat").toString();
		String domain = map.get("domain").toString();
		
				
		if(isKorChar(name) && isNumberic(phone) && isNumberic(age)) {
			CounselDomain quick = new CounselDomain();
			quick.setRegip(regip);
			quick.setDomain(domain);
			quick.setPhone(phone);
			quick.setAge(age);
			quick.setName(name);
			quick.setHopse(hopse);
			quick.setGubun(gubun);
			quick.setStat(stat);
			service.insert(quick);
		}else {
			System.out.println("Fail");
		}
	}
	
	@ResponseBody
	@PostMapping("/quick/subscribe.do")
	public void subcribe (@RequestBody HashMap<String, Object> map) throws Exception {
		String regip = map.get("regip").toString();
		String phone = map.get("phone").toString();
		String age = map.get("age").toString();
		String email = map.get("email").toString();
		String name = map.get("name").toString();
		String hopse = map.get("hopse").toString();
		String gubun = map.get("gubun").toString();
		String stat = map.get("stat").toString();
		String domain = map.get("domain").toString();
		
		if(isKorChar(name) && isNumberic(phone) && isNumberic(age)) {
			CounselDomain quick = new CounselDomain();
			quick.setRegip(regip);
			quick.setDomain(domain);
			quick.setPhone(phone);
			quick.setAge(age);
			quick.setEmail(email);
			quick.setName(name);
			quick.setHopse(hopse);
			quick.setGubun(gubun);
			quick.setStat(stat);
			service.insert(quick);
		}
	
	}
	
	@RequestMapping("/counsel/online.do")
	public String online (Model md) throws Exception {
		return "/counsel/online";
	}
	
	@RequestMapping("/counsel/specclass.do")
	public String specclass (Model md) throws Exception {
		return "/counsel/specclass";
	}
	
	@RequestMapping("/counsel/cost.do")
	public String cost (Model md) throws Exception {
		return "/counsel/cost";
	}
	
	@RequestMapping("/counsel/specclass2.do")
	public String specclass2 (Model md) throws Exception {
		return "/counsel/specclass2";
	}
	@RequestMapping("/counsel/specclass3.do")
	public String specclass3 (Model md) throws Exception {
		return "/counsel/specclass3";
	}
	
	@RequestMapping("/counsel/specclass4.do")
	public String specclass4 (Model md) throws Exception {
		return "/counsel/specclass4";
	}
	
	@RequestMapping("/fail.do")
	public String failpage () throws Exception {
		return "/include/fail";
	}
	
	public static boolean isKorChar(String word) {
		return Pattern.matches(".*[ㄱ-ㅎㅏ-ㅣ가-힣]+.*", word);
	}
	
	public static boolean isNumberic(String str) {
        return str.matches("[+-]?\\d*(\\.\\d+)?");
	}

}

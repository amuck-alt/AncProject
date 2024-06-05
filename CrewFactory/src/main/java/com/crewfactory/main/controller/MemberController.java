package com.crewfactory.main.controller;

import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.crewfactory.main.domain.MemberDomain;
import com.crewfactory.main.service.MemberService;

@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	MemberService member;
	
	@RequestMapping(value="/member/login.do")
	String init(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "member/login";
	}
	
	@RequestMapping(value="/member/join.do")
	String join(Model model) {
		model.addAttribute("message", "Hellow World");		
		return "member/join";
	}
	
	@RequestMapping(value="/member/find.do")
	String find(Model model) {
		model.addAttribute("result", "Hellow World");		
		return "member/find";
	}
	
	@RequestMapping(value="/member/findIdpw.do")
	String findIdpw(@ModelAttribute("@find") MemberDomain domain, Model model, HttpSession session) throws Exception {
		logger.info("find id/pw ================== " + domain.toString());
		model.addAttribute("result", member.findIdpw(domain));		
		return "member/findok";
	}
	
	@RequestMapping(value="/member/loginCheck.do")
	String loginCheck(@ModelAttribute("@login") MemberDomain domain, Model model, HttpSession session) throws Exception {
		logger.info("member login ================== " + domain.toString());
		
		int result = member.check(domain);
		
		if(result > 0) {
			session.setAttribute("crewfactoryMemberInfo", domain.toString());
			model.addAttribute("result", "succeed");
		}else {
			model.addAttribute("result", "failed");
		}	
				
		return "member/login";
	}
	
	@PostMapping(value="/member/joinCheck.do")
	String joinCheck(@ModelAttribute("@join") MemberDomain domain, Model model, HttpSession session, HttpServletRequest request) throws Exception {
				
		String name = domain.getUsernm();
		String age = domain.getAge();
		String mobile = domain.getMobile();
		
		if(mobile != null || !("").equals(mobile)) {
			if(isKorChar(name) && isNumberic(mobile) && isNumberic(age)) {
				member.insert(domain);
				model.addAttribute("join_result", "succeed");
			} else {
				model.addAttribute("join_result", "failed");
				return "/include/fail";
			}
		}
				
		return "member/login";
	}
	
	@RequestMapping(value="/member/logout.do")
	String logout(HttpSession session, Model model) {
		session.removeAttribute("crewfactoryMemberInfo");
		model.addAttribute("message", "Hellow World");		
		return "redirect:/";
	}
	
	@ResponseBody
	@PostMapping(value="/member/checkId.do")
	public Map <String, Object> checkId (@RequestBody HashMap<String, Object> map, HttpServletResponse response) throws Exception {
		logger.info("======================== request member check ==========================");
		logger.info("data ============ " + map);
		String userid = map.get("userid").toString();
		
		MemberDomain domain = new MemberDomain();
		domain.setUserid(userid);
		int result = member.overlap(domain);
		Map <String, Object> overlap = new HashMap<String, Object>();
		if(result == 0) {
			System.out.println("================== ok ====================");
			overlap.put("value", true);
			
		}else {
			System.out.println("================== false ====================");
			overlap.put("value", false);
		}
		return overlap;		
	}
	
	public static boolean isKorChar(String word) {
		return Pattern.matches(".*[ㄱ-ㅎㅏ-ㅣ가-힣]+.*", word);
	}
	
	public static boolean isNumberic(String str) {
        return str.matches("[+-]?\\d*(\\.\\d+)?");
	}

}

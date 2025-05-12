package com.crewfactory.main.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.AuthDomain;
import com.crewfactory.main.domain.MessageDomain;
import com.crewfactory.main.service.AuthService;
import com.crewfactory.main.service.VanalyzerService;

@Controller
public class AdminHomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminAuthController.class);
	
	@Autowired
	AuthService as;
	
	@Autowired
	VanalyzerService vanalyzer;
	
	@RequestMapping(value="/mng.do")
	String admin (HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		String url = "";		
		String opt = request.getParameter("opt");
		String searchDay = request.getParameter("searchDay");
		String searchMonth = request.getParameter("searchMonth");
		
		if(StringUtils.isNotEmpty(searchDay)) {
			
		} else {
			SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ("yyyyMMdd", Locale.KOREA );
			Date currentTime = new Date ();
			searchDay = mSimpleDateFormat.format (currentTime);
		}
		
		
		Map <String, Object> searchMap = new HashMap <String, Object>();
		searchMap.put("searchDay", searchDay);
		searchMap.put("searchMonth", searchMonth);
		
		if(request.getSession().getAttribute("ManagerInfo") != null) {

			if("thismonth".equals(opt)) {
				logger.info("searchday ==================" + searchMonth);
				model.addAttribute("overview", vanalyzer.ov_count_monthly(searchMap));
			}else {
				logger.info("searchday ==================" + searchDay);
				model.addAttribute("overview", vanalyzer.ov_count(searchMap));
			}
			
			model.addAttribute("total", vanalyzer.totalCount(searchMap));
			model.addAttribute("recent", vanalyzer.selectRecent(searchMap));

			url = "/mng/index";
		} else {
			url = "/mng/login";
		}
				
		return url;
	}
	
	
	@RequestMapping(value="/mng/login.do", method=RequestMethod.POST)
	String login (HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		String team = "cabin";
		AuthDomain domain = new AuthDomain();
		domain.setUserid(request.getParameter("userid"));
		domain.setUserpw(request.getParameter("userpw"));
		domain.setTeam(team);
		HttpSession session = request.getSession();
		session.setAttribute("ManagerInfo", as.login(domain));
		session.setAttribute("ManagerList", as.selectTeam(domain));

		logger.info(String.format("login : %s", domain.getUserid()));
		
		if(session.getAttribute("ManagerInfo") == null) {
			model.addAttribute("msg", "false");
		} else {
			model.addAttribute("msg", "true");
			as.updateRecDate(domain);
		}		
		return "/mng/login";
	}
	
	@RequestMapping(value="/mng/logout.do")
	String logout (HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {

		HttpSession session = request.getSession();
		session.setAttribute("ManagerInfo", null);

		logger.info("logout =================== " + session.toString() );
				
		return "/mng/login";
	}
	
	@RequestMapping(value="/mng/ok.do", method=RequestMethod.GET)
	String result (@RequestParam(value="msg") String message,
					@RequestParam(value="reurl") String reurl,
					@RequestParam(value="home") String home,
					@RequestParam(value="section") String section,
					Model model) {
		MessageDomain domain = new MessageDomain();
		domain.setMsg(message);
		domain.setReurl(reurl);
		domain.setHome(home);
		domain.setSection(section);
		model.addAttribute("result", domain);		
		
		return "/mng/Message";
	}

}

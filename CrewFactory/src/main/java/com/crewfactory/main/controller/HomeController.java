package com.crewfactory.main.controller;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



import com.crewfactory.main.domain.SearchDomain;
import com.crewfactory.main.service.AnnounceService;
import com.crewfactory.main.service.AuthService;
import com.crewfactory.main.service.BlogService;
import com.crewfactory.main.service.CounterService;
import com.crewfactory.main.service.IPBlockService;
import com.crewfactory.main.service.ProfessorService;
import com.crewfactory.main.service.RecruitService;
import com.crewfactory.main.service.ReplyService;
import com.crewfactory.main.service.ReviewService;
import com.crewfactory.main.service.VanalyzerService;

@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	AuthService auth;
	
	@Autowired
	RecruitService recruit;
	
	@Autowired
	BlogService blog;
	
	@Autowired
	ReviewService review;
	
	@Autowired
	AnnounceService announce;
	
	@Autowired
	CounterService counter;
	
	@Autowired
	VanalyzerService vanalyzer;
	
	@Autowired
	ProfessorService professor;
	
	@Autowired
	IPBlockService ipblock;
	
	@Autowired
	ReplyService reply;
	
	@RequestMapping(value="/")
	String init(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		
		String ip = request.getHeader("X-FORWARDED-FOR");
		if (ip == null)	ip = request.getRemoteAddr();
		
		int checkBlock = ipblock.checkBlock(ip);
		
		if(checkBlock > 0) {
			return "block";
		}else {
			
			/*
			 * if (session.getAttribute("wwwcrewfactorycom_lading_session") == null) {
			 * session.setAttribute("wwwcrewfactorycom_lading_session",
			 * request.getRemoteAddr()); model.addAttribute("reviewBest",
			 * review.selectBest()); model.addAttribute("professor",
			 * professor.selectByWebHome()); return "landing"; } else {
			 */
			
			if (session.getAttribute("wwwcrewfactorycom_lading_session") != null) {
				model.addAttribute("landing", "Y");
			} else {
				model.addAttribute("landing", "N");
			}
				model.addAttribute("blogko", blog.selectBlogKoByHome());
				model.addAttribute("blogos", blog.selectBlogOsByHome());
				model.addAttribute("reviewKe", review.selectKe());
				model.addAttribute("reviewOz", review.selectOz());
				model.addAttribute("reviewKo", review.selectKo());
				model.addAttribute("reviewEa", review.selectEa());
				model.addAttribute("reviewEu", review.selectEu());
				model.addAttribute("reviewAs", review.selectAs());	
				model.addAttribute("announce", announce.selectNew());
				model.addAttribute("moment", blog.selectMomentByHome() );			
				model.addAttribute("professor", professor.selectByWebHome());
				model.addAttribute("reply", reply.selectByWebHome());
				return "index";
		}
	}
	
	
	
	@RequestMapping(value="/mobile.do")
	String mobile (HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
		
		String section = "all";
		SearchDomain search = new SearchDomain();
		search.setSearchSection(section);
		model.addAttribute("message", "Hellow World");
		//model.addAttribute("recruiting", recruit.selectTop4());
		model.addAttribute("blogko", blog.selectBlogKoByHome());
		model.addAttribute("blogos", blog.selectBlogOsByHome());
		
		model.addAttribute("reviewKe", review.selectKe());
		model.addAttribute("reviewOz", review.selectOz());
		model.addAttribute("reviewKo", review.selectKo());
		model.addAttribute("reviewEa", review.selectEa());
		model.addAttribute("reviewEu", review.selectEu());
		model.addAttribute("reviewAs", review.selectAs());

		model.addAttribute("announce", announce.selectNew());
		model.addAttribute("moment", blog.selectMomentByHome() );
		
		model.addAttribute("professor", professor.selectByWebHome());
		
		return "m";
	}
	
	@RequestMapping(value="/landing.do")
	String landing (HttpServletRequest request, HttpSession session, HttpServletResponse response, Model model) throws Exception {
		if (session.getAttribute("wwwcrewfactorycom_lading_session") == null) {
			session.setAttribute("wwwcrewfactorycom_lading_session", request.getRemoteAddr());;
		}
		model.addAttribute("reviewBest", review.selectBest());
		model.addAttribute("professor", professor.selectByWebHome());
		return "landing";
	}
	
	@RequestMapping(value="/landingm.do")
	String landingm (HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
		model.addAttribute("reviewBest", review.selectBest());
		model.addAttribute("professor", professor.selectByWebHome());
		return "landingm";
	}
	
}

package com.crewfactory.main.controller;

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
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
   
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

   @RequestMapping({"/"})
   String init(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
      String userAgent = request.getHeader("User-Agent");
      if (session.getAttribute("wwwcrewfactorycom_lading_session") != null) {
         model.addAttribute("landing", "Y");
      } else {
         model.addAttribute("landing", "N");
      }

      if (userAgent.indexOf("iPhone") == -1 && userAgent.indexOf("iPad") == -1 && userAgent.indexOf("Android") == -1 && userAgent.indexOf("BlackBerry") == -1 && userAgent.indexOf("symbian") == -1 && userAgent.indexOf("sony") == -1 && userAgent.indexOf("Mobile") == -1) {
         model.addAttribute("blogko", this.blog.selectBlogKoByHome());
         model.addAttribute("blogos", this.blog.selectBlogOsByHome());
         model.addAttribute("reviewKe", this.review.selectKe());
         model.addAttribute("reviewOz", this.review.selectOz());
         model.addAttribute("reviewKo", this.review.selectKo());
         model.addAttribute("reviewEa", this.review.selectEa());
         model.addAttribute("reviewEu", this.review.selectEu());
         model.addAttribute("reviewAs", this.review.selectAs());
         model.addAttribute("announce", this.announce.selectNew());
         model.addAttribute("moment", this.blog.selectMomentByHome());
         model.addAttribute("professor", this.professor.selectByWebHome());
         model.addAttribute("reply", this.reply.selectByWebHome());
         return "index";
      } else {
    	  model.addAttribute("blogko", this.blog.selectBlogKoByHome());
          model.addAttribute("blogos", this.blog.selectBlogOsByHome());
          model.addAttribute("reviewKe", this.review.selectKe());
          model.addAttribute("reviewOz", this.review.selectOz());
          model.addAttribute("reviewKo", this.review.selectKo());
          model.addAttribute("reviewEa", this.review.selectEa());
          model.addAttribute("reviewEu", this.review.selectEu());
          model.addAttribute("reviewAs", this.review.selectAs());
          model.addAttribute("announce", this.announce.selectNew());
          model.addAttribute("moment", this.blog.selectMomentByHome());
          model.addAttribute("professor", this.professor.selectByWebHome());
          model.addAttribute("reply", this.reply.selectByWebHome());
         return "mobile";
      }
   }

   @RequestMapping({"/mobile.do"})
   String mobile(HttpServletRequest request, HttpServletResponse response, HttpSession session, Model model) throws Exception {
      String section = "all";
      SearchDomain search = new SearchDomain();
      search.setSearchSection(section);
      model.addAttribute("message", "Hellow World");
      model.addAttribute("blogko", this.blog.selectBlogKoByHome());
      model.addAttribute("blogos", this.blog.selectBlogOsByHome());
      model.addAttribute("reviewKe", this.review.selectKe());
      model.addAttribute("reviewOz", this.review.selectOz());
      model.addAttribute("reviewKo", this.review.selectKo());
      model.addAttribute("reviewEa", this.review.selectEa());
      model.addAttribute("reviewEu", this.review.selectEu());
      model.addAttribute("reviewAs", this.review.selectAs());
      model.addAttribute("announce", this.announce.selectNew());
      model.addAttribute("moment", this.blog.selectMomentByHome());
      model.addAttribute("professor", this.professor.selectByWebHome());
      return "m";
   }

   @RequestMapping({"/landing.do"})
   String landing(HttpServletRequest request, HttpSession session, HttpServletResponse response, Model model) throws Exception {
      if (session.getAttribute("wwwcrewfactorycom_lading_session") == null) {
         session.setAttribute("wwwcrewfactorycom_lading_session", request.getRemoteAddr());
      }

      model.addAttribute("reviewBest", this.review.selectBest());
      model.addAttribute("professor", this.professor.selectByWebHome());
      return "landing";
   }

   @RequestMapping({"/landingm.do"})
   String landingm(HttpServletRequest request, HttpServletResponse response, Model model) throws Exception {
      model.addAttribute("reviewBest", this.review.selectBest());
      model.addAttribute("professor", this.professor.selectByWebHome());
      return "landingm";
   }
}
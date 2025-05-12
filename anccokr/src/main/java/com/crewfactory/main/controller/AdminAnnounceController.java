package com.crewfactory.main.controller;


import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.crewfactory.main.domain.AnnounceDomain;
import com.crewfactory.main.domain.FileManagerDomain;
import com.crewfactory.main.service.AnnounceService;
import com.crewfactory.main.service.FileManagerService;
import com.crewfactory.main.util.TotalPage;

@Controller
public class AdminAnnounceController {
	
private static final Logger logger = LoggerFactory.getLogger(AdminBlogController.class);
	
	@Value("${file.upload-dir}")
	String realpath;
	
	@Value("${file.download.url}")
	String serverurl;

	@Autowired
	FileManagerService fs;
	
	@Autowired
	AnnounceService service;
	
	@Autowired
	private TotalPage total_page;
	
	@RequestMapping(value="/mng/announce.do", method=RequestMethod.GET)
	public String init(Model model) throws Exception {
		
		model.addAttribute("result", service.selectAdmin());
        
		return "/mng/bbs/AnnounceList";
	}
	
	
	@RequestMapping(value="/mng/announceeeeeeeeeeeeeeeeeee.do", method=RequestMethod.GET)
	public String init(@RequestParam Map<String, String> paramMap, Model model) throws Exception {
		String strStartPage = paramMap.get("start-page");
        String strVisiblePages = paramMap.get("visible-pages");
 
        int startPage = 1;
        int visiblePages = 10;
        
        if(strStartPage != null && !strStartPage.equals("")){
            startPage = Integer.parseInt(strStartPage);
        }
        if(strVisiblePages != null && !strVisiblePages.equals("")){
            visiblePages = Integer.parseInt(strVisiblePages);
        }
 
        model.addAttribute("startPage", startPage);	//현재 페이지
        model.addAttribute("totalPage", 1);			//전체
        
        
 
        Map<String, Object> searchMap = new HashMap<String, Object>(); 
        String searchText = paramMap.get("searchText");            
        searchMap.put("searchText", searchText);
 
        //전체 게시물수 가져오기
        int totalCnt = service.selectTotal(searchMap);
 
        model.addAttribute("init","N");
        model.addAttribute("searchText", searchText);
        model.addAttribute("totalCnt", totalCnt);
        model.addAttribute("totalPage", total_page.getTotalPage(totalCnt, visiblePages));
        model.addAttribute("result", service.selectAll(searchMap, startPage, visiblePages));
        
		return "/mng/bbs/AnnounceList";
	}
	
	@RequestMapping(value="/mng/announce/write.do", method=RequestMethod.GET)
	public String write(Model model) throws Exception {
		return "/mng/bbs/AnnounceWrite";
	}
	
	@RequestMapping(value="/mng/announce/insert.do", method=RequestMethod.POST)
	public String insert(HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
		
		String section = request.getParameter("section");			
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");
		
//		String path = request.getSession().getServletContext().getRealPath("resources/static/docs");
		
		try {
						
			AnnounceDomain domain = new AnnounceDomain();
		    domain.setSection(section);
		    domain.setDescription(description);
		    
		    if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "bbs", realpath);
		    	String thumbnail = serverurl + fd.getPath();
		    	domain.setThumbnail(thumbnail);
		    }else {
		    	domain.setThumbnail("");
		    } 
		    
		    domain.setTitle(title);
		    domain.setContent(content);
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    service.insert(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		} 
		
		
		return "redirect:/mng/announce.do";
	}
	
	@RequestMapping(value="/mng/announce/view.do", method=RequestMethod.GET)
	public String view(@RequestParam(value="idx") int idx, Model model) throws Exception {
		model.addAttribute("result", service.selectOne(idx));			
		return "/mng/bbs/AnnounceView";
	}
	
	@RequestMapping(value="/mng/announce/update.do", method=RequestMethod.POST)
	public String memupdate(HttpServletRequest request, @RequestParam("thumbnail") MultipartFile mpf, Model model) throws Exception {
		String idx = request.getParameter("idx");
		String section = request.getParameter("section");			
		String description = request.getParameter("description");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String regid = request.getParameter("regid");
		String regip = request.getParameter("regip");


		try {
			
			AnnounceDomain domain = new AnnounceDomain();
			
			if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "bbs", realpath);
		    	String thumbnail = serverurl + fd.getPath();
		    	domain.setThumbnail(thumbnail);
			}
			
		    domain.setIdx( Integer.parseInt(idx));
			domain.setSection(section);
		    domain.setDescription(description);
		    domain.setTitle(title);
		    domain.setContent(content);
		    domain.setRegid(regid);
		    domain.setRegip(regip);
		    logger.info("Thumbnail ==============" + domain.getThumbnail());
		    
		    service.update(domain);
		    
		} catch(Exception e) {
			logger.error("Failed to upload ", e);
		}

		return "redirect:/mng/announce.do";
	}
	
	@RequestMapping(value="/mng/announce/delete.do", method=RequestMethod.GET)
	public String memdelete(@RequestParam(value="idx") int idx) throws Exception {
		service.delete(idx);
		return "redirect:/mng/announce.do";
	}

}

package com.crewfactory.main.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.crewfactory.main.domain.FileManagerDomain;
import com.crewfactory.main.domain.HumanResourceDomain;
import com.crewfactory.main.service.FileManagerService;
import com.crewfactory.main.service.HumanResourceService;


@Controller
public class HumanResourceController {
	
	private static final Logger logger = LoggerFactory.getLogger(HumanResourceController.class);
	
	@Value("${file.upload-dir}")
	String realpath;
	
	@Value("${file.download.url}")
	String serverurl;
	
	@Autowired
	FileManagerService fs;
	
	@Autowired
	HumanResourceService service;
	
	@RequestMapping(value="/hr/recruit.do")
	public String onlineResume (HttpServletRequest request) throws Exception {

		return "/hr/recruit";
	}
	
	@RequestMapping(value="/hr/propose.do")
	public String insert (HttpServletRequest request,  @RequestParam("photo") MultipartFile mpf) throws Exception {

		String returnurl = "redirect:/hr/complete.do";
		String catenum = request.getParameter("catenum");
		String korname = request.getParameter("korname");
		String engname = request.getParameter("engname");
		String photo = "";
		String phoneagency = request.getParameter("phoneagency");
		String phonefirst = request.getParameter("phonefirst");
		String phonesecond = request.getParameter("phonesecond");
		String email = request.getParameter("email");
		String birthyear = request.getParameter("birthyear");
		String birthmonth = request.getParameter("birthmonth");
		String birthday = request.getParameter("birthday");
		String height = request.getParameter("height");
		String weight = request.getParameter("weight");
		String gender = request.getParameter("gender");
		String nation = request.getParameter("nation");
		String address = request.getParameter("address");
		String edulv = request.getParameter("edulv");
		String gradlv = request.getParameter("gradlv");
		String edugb = request.getParameter("edugb");
		String langlv = request.getParameter("langlv");
		String skilllv = request.getParameter("skilllv");
		String reference = request.getParameter("reference");
		String introduce = request.getParameter("introduce");
		
		try {
			HumanResourceDomain domain = new HumanResourceDomain();
			domain.setCatenum(catenum);
			domain.setKorname(korname);
			domain.setEngname(engname);
			if(StringUtils.isNoneEmpty(mpf.getOriginalFilename())) {
		    	FileManagerDomain fd = fs.upload(mpf, "hr", realpath);
		    	photo = fd.getPath();
		    	domain.setPhoto(photo);
		    }else {
		    	domain.setPhoto("");
		    }
			domain.setPhoneagency(phoneagency);
			domain.setPhonefirst(phonefirst);
			domain.setPhonesecond(phonesecond);
			domain.setEmail(email);
			domain.setBirthyear(birthyear);
			domain.setBirthmonth(birthmonth);
			domain.setBirthday(birthday);
			domain.setHeight(height);
			domain.setWeight(weight);
			domain.setGender(gender);
			domain.setNation(nation);
			domain.setAddress(address);
			domain.setEdulv(edulv);
			domain.setEdugb(edugb);
			domain.setGradlv(gradlv);
			domain.setLanglv(langlv);
			domain.setSkilllv(skilllv);
			domain.setReference(reference);
			domain.setIntroduce(introduce);
			boolean result = service.insert(domain);
			
			if(result == false) {
				returnurl = "redirect:/hr/recruit.do";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
				
		return returnurl;
	}
	
	@RequestMapping(value="/hr/complete.do")
	public String complete (HttpServletRequest request) throws Exception {
		return "/hr/complete";
	}

}

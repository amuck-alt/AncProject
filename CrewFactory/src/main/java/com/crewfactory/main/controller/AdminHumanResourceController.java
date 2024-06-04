package com.crewfactory.main.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Row;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.crewfactory.main.domain.HumanResourceDomain;
import com.crewfactory.main.service.HumanResourceService;

import com.crewfactory.main.util.ExcelUtil;


@Controller
public class AdminHumanResourceController {
	
	@Autowired
	HumanResourceService service;
	
	private static final Logger logger = LoggerFactory.getLogger(AdminBlogController.class);
	
	@RequestMapping(value="/manager/hr/list.do", method=RequestMethod.GET)
	public String select (HttpServletRequest request, Model model) throws Exception {
		String catenum = request.getParameter("catenum");
		model.addAttribute("result", service.select(catenum));
		return "/admin/hr/list";
	}
	
	@RequestMapping(value="/manager/hr/update.do", method=RequestMethod.POST)
	public String update (@ModelAttribute("@hr") HumanResourceDomain domain) throws Exception {
		service.update(domain);
		return "redirect:/manager/hr/list.do?catenum="+domain.getCatenum();
	}
	
	@RequestMapping(value="/manager/hr/delete.do", method=RequestMethod.GET)
	public String delete (@RequestParam(value="idx") int idx, @RequestParam(value="catenum") String catenum) throws Exception {
		service.delete(idx);
		return "redirect:/manager/hr/list.do?catenum="+catenum;
	}
	
	@RequestMapping(value="/manager/hr/view.do", method=RequestMethod.GET)
	public String view (HttpServletRequest request, Model model) throws Exception {
		int idx = Integer.parseInt(request.getParameter("idx"));
		model.addAttribute("result", service.view(idx));
		return "/admin/hr/view";
	}
	
	@RequestMapping(value="/manager/hr/download.do", method=RequestMethod.GET)
	public void download (HttpServletRequest request, HttpServletResponse response) throws Exception {
		logger.info("=================== download start ===================");
		String catenum = request.getParameter("catenum");
		List <HumanResourceDomain> list = service.select(catenum);
		
		logger.info(list.toString());

		int nRow = 0;
		ExcelUtil excel = new ExcelUtil("채용정보");

		//헤더
		Row headerRow = excel.createRow(nRow++, 20f);
		excel.appendCell(headerRow, "header", "한글이름", 15);
		excel.appendCell(headerRow, "header", "영문이름", 20);
		excel.appendCell(headerRow, "header", "사진", 15);
		excel.appendCell(headerRow, "header", "연락처", 20);
		excel.appendCell(headerRow, "header", "이메일", 20);
		excel.appendCell(headerRow, "header", "성별", 10);
		excel.appendCell(headerRow, "header", "키", 10);
		excel.appendCell(headerRow, "header", "몸무게", 10);
		excel.appendCell(headerRow, "header", "최종학력", 20);
		excel.appendCell(headerRow, "header", "졸업여부", 10);
		excel.appendCell(headerRow, "header", "국적", 20);
		excel.appendCell(headerRow, "header", "구분", 10);
		//바디 
		for( HumanResourceDomain info : list) { 
			Row bodyRow = excel.createRow(nRow++, 20f);
			excel.appendCell(bodyRow, "cell_normal_centered", info.getKorname());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getEngname());
			excel.appendCell(bodyRow, "cell_normal_centered", "");
			excel.appendCell(bodyRow, "cell_normal_centered", info.getPhonenum());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getEmail());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getGender());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getHeight());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getWeight());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getEdulv());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getGradlv());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getNation());
			excel.appendCell(bodyRow, "cell_normal_centered", info.getStatus());
			excel.appendRow(bodyRow);
		}
		excel.download(response, "채용정보.xls");
	}
}

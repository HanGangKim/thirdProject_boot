package com.human.java.master.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.service.MasterCompanyService;
import com.human.java.service.MasterExhibitionService;

@Controller
@RequestMapping("/master/")
public class MasterDnRController {
	
	
	@Autowired
	private MasterExhibitionService masterExhibitionService;
	
	@Autowired
	private MasterCompanyService masterCompanyService;
	
	
	/*
	* approveCompany.do : 업체 / 전시 Done , Reject 리스트 조회 컨트롤러   
	* @author : 김한수
	* @return : /Master/CheckDnR.jsp
	* @return : 업체와 전시 플래그가 'D' 또는 'R'인 업체 / 전시 리스트 
	* @param : MasterCompanyVO 객체 
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@RequestMapping("checkDnRSelect.do")
	public ModelAndView CheckDnR() {
		System.out.println("CheckDnR 컨트롤러 호출");
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/Master/CheckDnR");
		mv.addObject("exvo", masterExhibitionService.masterExhibitionDR());
		mv.addObject("covo", masterCompanyService.masterCompanyDR());

		return mv;
	}

}

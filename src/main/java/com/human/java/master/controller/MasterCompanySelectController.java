package com.human.java.master.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.MasterCompanyVO;
import com.human.java.service.MasterCompanyService;

@Controller
@RequestMapping("/master/")
public class MasterCompanySelectController {
	
	@Autowired
	private MasterCompanyService masterCompanyService;

	
	/*
	* approveCompany.do : 업체 waiting 페이지 컨트롤러   
	* @author : 정은성 
	* @return : /Master/ApproveCompany.jsp
	* @return : 플래그 'W'인 업체 리스트 
	* @param : MasterCompanyVO 객체 
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/	
	@RequestMapping("approveCompany.do")
	public ModelAndView ApproveCompany() {
		
		System.out.println("업체승인페이지호출");
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/Master/ApproveCompany");
		mv.addObject("vo", masterCompanyService.masterCompany());
		
		return mv;
	}

	/*
	* masterCompanySearchTitleD.do : 업체 승인 검색 컨트롤러   
	* @author : 정은성 
	* @return : A-jax를 통한 비동기통신(/Master/CheckDnR.jsp)
	* @return : 플래그 'D'인 업체 리스트 
	* @param : MasterCompanyVO 객체 
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@ResponseBody
	@RequestMapping("masterCompanySearchTitleD.do")
	public List<MasterCompanyVO> masterCompanySearchTitle (MasterCompanyVO vo){
		String title = vo.getCompany_name();  
	
		List<MasterCompanyVO> masterList = masterCompanyService.masterCompanySearchTitleD(vo,title);
		
		return masterList;
	}
	
	
	/*
	* "masterCompanySearchTitleR.do : 업체 비승인 검색 컨트롤러   
	* @author : 정은성 
	* @return : A-jax를 통한 비동기통신(/Master/CheckDnR.jsp)
	* @return : 플래그 'R'인 업체 리스트 
	* @param : MasterCompanyVO 객체 
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@ResponseBody
	@RequestMapping("masterCompanySearchTitleR.do")
	public List<MasterCompanyVO> masterCompanySearchTitleR (MasterCompanyVO vo){
		String title = vo.getCompany_name();  
	
		List<MasterCompanyVO> masterList = masterCompanyService.masterCompanySearchTitleR(vo,title);
		
		return masterList;
	}
	
}


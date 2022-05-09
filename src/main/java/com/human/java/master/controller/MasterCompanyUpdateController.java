package com.human.java.master.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.MasterCompanyVO;
import com.human.java.service.MasterCompanyService;

@Controller
@RequestMapping("/master/")
public class MasterCompanyUpdateController {

	@Autowired
	private MasterCompanyService masterCompanyService;
	
	/*
	* masterCompanyUpdate.do : 업체승인 (플래그 업데이트) 컨트롤러 
	* @author : 정은성
	* @return : approveCompany.do 컨트롤러 호출  
	* @param : company_id , company_flag
	* @throws : 따로 없음 
	* @exception : 따로 없음
	**/
	@RequestMapping("masterCompanyUpdate.do")
	public String masterCompanyUpdate(MasterCompanyVO vo) {
		masterCompanyService.masterCompanyUpdate(vo);
		return "redirect:approveCompany.do";
	}
}
//}

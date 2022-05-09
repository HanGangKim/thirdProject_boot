package com.human.java.company.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.CompanyVO;
import com.human.java.service.CompanyService;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/company/")
public class CompanyTotalDeleteController {
	@Autowired
	CompanyService companyService;
	@Autowired
	ExhibitionService exhibitionService;
	
	
	/*
	* customerTotalDelete.do : 업체 회원탈퇴 컨트롤러  
	* @author : 김한수
	* @return : 입력한 비밀번호가 맞을 경우 redirect:/company/CompanyGoodbye.do ( CustomerGoodbye.jsp 이동 ) 
	* @return : 입력한 비밀번호가 틀릴 경우 redirect:/company/CompanyConfirmPass.do ( CustomerConfirmPass.jsp 이동 ) 
	* @param : CompanyVO vo, HttpSession session
	* @throws : 따로 없음 
	* @exception : 회원탈퇴 후에도 세션이 유지되었던 문제 발생 / invalidate() 메소드를 통해 문제 해결
	* @version 1.2 
	**/
	@RequestMapping("companyTotalDelete.do")
	public ModelAndView companyTotalDelete(CompanyVO vo, HttpSession session) {
		
		String companyId = vo.getCompany_id();
		
		CompanyVO result = companyService.companyLogin(vo);
		ModelAndView mv = new ModelAndView();
		
		//[1] 아이디, 패스워드 불일치
		if(result ==null) {
			System.out.println("탈퇴실패");
			mv.setViewName("redirect:/company/CompanyConfirmPass.do");
			
			return mv;
		}else {
			companyService.companyTotalDelete(vo);
			mv.setViewName("redirect:/company/CompanyGoodbye.do");
			session.invalidate();
			return mv;
		}
		
	}

}

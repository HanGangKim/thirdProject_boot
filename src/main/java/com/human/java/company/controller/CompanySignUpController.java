package com.human.java.company.controller;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.CustomerVO;
import com.human.java.service.CompanyService;

@Controller
@RequestMapping("/company/")
public class CompanySignUpController {

	@Autowired
	private CompanyService companyService;
	
	/*
	* checkId.do : 업체 아이디 중복체크 컨트롤러 
	* @author : 권민성
	* @return : A-jax를 통한 비동기통신(/Company/CompanySignUp.jsp)
	* @return : 아이디가 중복일 경우 회원가입 버튼 disable 할 수 있도록 '1' 리턴
	* @param : String userId, CompanyVO vo
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	// 아이디 중복체크 A-Jax
	@ResponseBody
	@RequestMapping("checkId.do")
	public int checkId(@RequestParam("userId") String userId, CompanyVO vo) {
		int check = companyService.idCheck(vo,userId);
		if (check==1) {
			return 1;
		} else {
			return 0;
		}
	}
	
	/*
	* companyInsert.do : 업체 회원가입 컨트롤러 
	* @author : 김한수 
	* @return : 회원가입에 성공할 경우 redirect:/company/CompanyLoginWaiting.do
	* @return : 회원가입에 실패할 경우 redirect:/company/CompanyErrorPage.do
	* @param : String userId, CompanyVO
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@RequestMapping("companyInsert.do")
	public ModelAndView companySignUp(CompanyVO vo) {
		// 가입실패
		int result = companyService.companyInsert(vo);
		ModelAndView mv = new ModelAndView();

		if (result > 0) {
			mv.setViewName("redirect:/company/CompanyLoginWaiting.do");
		}else {
			mv.setViewName("redirect:/company/CompanyErrorPage.do");
		}
		return mv;
	}
	

}

package com.human.java.company.controller;

import java.util.Date;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.human.java.domain.CompanyVO;
import com.human.java.domain.CustomerVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.service.CompanyService;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/company/")
public class CompanyLoginController {

	@Autowired
	private CompanyService companyService;
	
	@Autowired
	private ExhibitionService exhibitionService;
	
	
	/*
	*companyLogin.do : 로그인 컨트롤러   
	* @author : 김한수  
	* @return : 로그인에 실패할 경우 /Company/CompanyLoginFail
	* @return : result.getCompany_flag().equals("W") 일 경우 /Company/CompanyLoginWaiting.jsp
	* @return : result.getCompany_flag().equals("D") 일 경우 /Company/CompanyMain.jsp
	* @return : result.getCompany_flag().equals("R") 일 경우 /Company/CompanyLoginReject.jsp
	* @return : 위 상황과 다른 조건의 경우 예외 발생 , /Company/CompanyErrorPage.jsp 
	* @param : CompanyVO vo, ExhibitionVO exvo, HttpSession session 
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@RequestMapping("companyLogin.do")	
	public ModelAndView companyLogin(CompanyVO vo, ExhibitionVO exvo, HttpSession session) {
		
		// 메소드 확인용 출력문 
		System.out.println("companyLogin.do 호출");
		CompanyVO result = companyService.companyLogin(vo);
		ModelAndView mv = new ModelAndView();

		// 로그인 실패
		if (result == null) {
			System.out.println("===============");
			System.out.println("로그인 실패");
			System.out.println("===============");
			
			mv.setViewName("/Company/CompanyLoginFail");
			return mv;

		// 로그인 성공
		} else if(result.getCompany_flag().equals("D")){
			System.out.println("[" + result.getCompany_id() + "]" + "로그인 성공");
			
			// CompanyVO 확인
			System.out.println("===============");
			System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
			System.out.println("Company Flag:"+result.getCompany_flag());
			System.out.println("===============");

			session.setAttribute("companyId", result.getCompany_id());
			session.setAttribute("companyPass", result.getCompany_password());
			session.setAttribute("companyPh", result.getCompany_ph());
			session.setAttribute("companyName", result.getCompany_name());
			session.setAttribute("companyEmail", result.getCompany_email());
			session.setAttribute("companyRegnum", result.getCompany_regnum());
			session.setAttribute("sessionTime", new Date().toLocaleString());

		
			mv.addObject("vo", exhibitionService.comingExhibition(exvo));
			mv.setViewName("/Company/CompanyMain");
			
			return mv;
		
		// 승인대기 	
		} else if (result.getCompany_flag().equals("W")) {
			
			// CompanyVO 확인
			System.out.println("===============");
			System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
			System.out.println("승인대기");
			System.out.println("Company Flag:"+result.getCompany_flag());
			System.out.println("===============");
			mv.setViewName("/Company/CompanyLoginWaiting");
			return mv;
			
		// 승인거절
		}else if (result.getCompany_flag().equals("R")) {
			
			// CompanyVO 확인
			System.out.println("===============");
			System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
			System.out.println("승인거절");
			System.out.println("Company Flag:"+result.getCompany_flag());
			System.out.println("===============");
			mv.setViewName("/Company/CompanyLoginReject");
			return mv;
			
		}else {
			
			// CompanyVO 확인
			System.out.println("===============");
			System.out.println("CompanyVO : " + ToStringBuilder.reflectionToString(vo));
			System.out.println("에러발생");
			System.out.println("Company Flag:"+result.getCompany_flag());
			System.out.println("===============");
			mv.setViewName("/Company/CompanyErrorPage");
			return mv;
				
		}
		 
	}
}

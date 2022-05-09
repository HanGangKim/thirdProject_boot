package com.human.java.customer.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.CustomerVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.service.CustomerService;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/customer/")
public class CustomerLoginController {

	@Autowired
	private CustomerService customerService;

	@Autowired
	private ExhibitionService exhibitionService;

	/*
	* customerLogin.do : 로그인 컨트롤러   
	* @author : 김한수  
	* @return : 로그인에 실패할 경우 /Customer/CustomerLoginFail
	* @return : 로그인에 성공할 경우 /MainPage/Main
	* @return : 관리자(admin)로 성공할 경우 /Master/MasterPage.jsp 
	* @param : MasterCompanyVO 객체 
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@RequestMapping("customerLogin.do")
	public ModelAndView customerLogin(CustomerVO vo, ExhibitionVO exvo, HttpSession session) {

		System.out.println("customerLogin 메소드 호출");
		CustomerVO result = customerService.customerLogin(vo);
		ModelAndView mv = new ModelAndView();

		if (result == null) {
			System.out.println("로그인 실패");
			mv.setViewName("/Customer/CustomerLoginFail");
			return mv;

		}else if((result.getCustomer_id()).equals("admin")&(result.getCustomer_password()).equals("admin")&(result.getCustomer_flag().equals("M"))){	
			
			System.out.println("Master : [" + result.getCustomer_id() + "]" + "로그인 성공");
			
			// 운영자 세션 부여
			session.setAttribute("masterName", result.getCustomer_name());
			session.setAttribute("masterId", result.getCustomer_id());	
			session.setAttribute("masterSessionTime", new Date().toLocaleString());
			
			mv.addObject("voRand", exhibitionService.randomExhibition(exvo));
			mv.addObject("vo", exhibitionService.comingExhibition(exvo));
			mv.addObject("volast", exhibitionService.lastExhibition(exvo));
			mv.addObject("top3" , exhibitionService.top3Exhibition(exvo));
			mv.setViewName("/Master/MasterPage");
			
			
			return mv;
		} else {
			// CompanyVO 확인
			System.out.println("[" + result.getCustomer_id() + "]" + "로그인 성공");
			
			session.setAttribute("userName", result.getCustomer_name());
			session.setAttribute("userId", result.getCustomer_id());
			session.setAttribute("userPh" , result.getCustomer_ph());
			session.setAttribute("userEmail", result.getCustomer_email());
			session.setAttribute("userGender", result.getCustomer_gender());
			session.setAttribute("userAge", result.getCustomer_age());
			session.setAttribute("userPass" , result.getCustomer_password());
			
			// 세션시간			
			session.setAttribute("sessionTime", new Date().toLocaleString());
			mv.addObject("voRand", exhibitionService.randomExhibition(exvo));
			mv.addObject("vo", exhibitionService.comingExhibition(exvo));
			mv.addObject("volast", exhibitionService.lastExhibition(exvo));
			mv.addObject("top3" , exhibitionService.top3Exhibition(exvo));
			mv.setViewName("/MainPage/Main");

			return mv;
		}
		

	}

}
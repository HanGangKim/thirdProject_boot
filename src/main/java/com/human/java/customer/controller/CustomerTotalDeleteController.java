package com.human.java.customer.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.CustomerVO;
import com.human.java.service.CustomerService;
import com.human.java.service.ExhibitionService;
import com.human.java.service.ReviewService;

@Controller
@RequestMapping("/customer/")
public class CustomerTotalDeleteController {
	
	@Autowired
	private CustomerService customerService;

	/*
	* customerTotalDelete.do : 회원탈퇴 컨트롤러  
	* @author : 김한수
	* @return : 입력한 비밀번호가 맞을 경우 redirect:/customer/CustomerGoodbye.do ( CustomerGoodbye.jsp 이동 ) 
	* @return : 입력한 비밀번호가 틀릴 경우 redirect:/customer/CustomerConfirmPass.do ( CustomerConfirmPass.jsp 이동 ) 
	* @param : CustomerVO vo 
	* @throws : 따로 없음 
	* @exception : 회원탈퇴 후에도 세션이 유지되었던 문제 발생 / invalidate() 메소드를 통해 문제 해결
	* @version 1.2 
	**/
	@RequestMapping("customerTotalDelete.do")
	public ModelAndView customerTotalDelete(CustomerVO vo , HttpSession session) {
		String userId = vo.getCustomer_id();
		
		CustomerVO result = customerService.customerLogin(vo);
		ModelAndView mv = new ModelAndView();
		
		// [1] 아이디와 패스워드가 맞지 않을 경우 
		if(result == null ) {
			System.out.println("회원탈퇴 실패");
			mv.setViewName("redirect:/customer/CustomerConfirmPass.do");
			
		return mv;	
			
		// [2] 아이디와 패스워드가 일치할 경우
		// [2-1] 리뷰 삭제
		// [2-2] 찜목록 삭제 
		// [2-3] 예매내역 삭제 
		// [2-4] 계정삭제
		}else {
			
			customerService.customerTotalDelete(vo);
			mv.setViewName("redirect:/customer/CustomerGoodbye.do");
			session.invalidate(); // 세션에 있는 값을 전부다 지우기
			System.out.println("회원탈퇴 성공");
			return mv;	
		}
			
	}
	
	
}

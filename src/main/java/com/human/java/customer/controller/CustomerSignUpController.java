
package com.human.java.customer.controller;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.human.java.domain.CustomerVO;
import com.human.java.service.CustomerService;

@Controller
@RequestMapping("/customer/")
public class CustomerSignUpController {

	@Autowired
	private CustomerService customerService;
	
	
	/*
	* checkId.do : 아이디 중복체크 컨트롤러 
	* @author : 권민성
	* @return : A-jax를 통한 비동기통신(/Customer/CustomerSignUp.jsp)
	* @return : 아이디가 중복일 경우 회원가입 버튼 disable 할 수 있도록 '1' 리턴
	* @param : String userId, CustomerVO vo
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@ResponseBody
	@RequestMapping("checkId.do")
	public int checkId(@RequestParam("userId") String userId, CustomerVO vo) {
		int check = customerService.idCheck(vo,userId);
		if (check==1) {
			return 1;
		} else {
			return 0;
		}
	}
	
	
	/*
	* customerInsert.do : 회원가입 컨트롤러 
	* @author : 김한수 
	* @return : 회원가입에 성공할 경우 redirect:/customer/CustomerSignUpSucess.do
	* @return : 회원가입에 실패할 경우 redirect:/customer/CompanyErrorPage.do
	* @param : String userId, CustomerVO vo
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@RequestMapping("customerInsert.do")
	public ModelAndView customerInsert(CustomerVO vo ) {
	
		int result = customerService.customerInsert(vo);
		ModelAndView mv = new ModelAndView();

		if (result > 0) {
			mv.setViewName("redirect:/customer/CustomerSignUpSucess.do");
		}else {
			mv.setViewName("redirect:/customer/CompanyErrorPage.do");
		}
		return mv;
	}


}

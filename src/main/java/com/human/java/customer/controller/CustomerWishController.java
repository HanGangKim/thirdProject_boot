package com.human.java.customer.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.WishListVO;
import com.human.java.service.CustomerService;

@Controller
@RequestMapping("/customer/")
public class CustomerWishController {
	
	@Autowired
	private CustomerService customerService;
	
	/*
	* customerWishSelectList.do : 찜목록 조회 컨트롤러    
	* @author : 권민성 
	* @return : /Customer/CustomerWishList.jsp 
	* @return : 해당회원의 찜목록 조회
	* @param : WishListVO , ExhibitionVO , 회원ID  
	* @throws : 따로 없음 
	* @exception : 찜목록이 따로 없을 경우 기본값 nullCheck 출력  
	**/
	@RequestMapping("customerWishSelectList.do")
	public ModelAndView SearchWish(ExhibitionVO vo, @RequestParam("id") String id, WishListVO wl, HttpServletRequest request) {

		ModelAndView mv = new ModelAndView();
		mv.setViewName("/Customer/CustomerWishList");		
		List<WishListVO> li = customerService.wishListSelect(vo, id, wl, request);
		
		if(li.isEmpty()) {
			String nullCheck = "찜한 목록이 없습니다.";
			mv.addObject("nullCheck", nullCheck);
		}else {
			mv.addObject("vo", li);
		}
		return mv;
	
	}
	
	/*
	* customerWishList.do : 찜목록 입력 + 조회 컨트롤러 
	* @author : 권민성 
	* @return : /Customer/CustomerWishList.jsp
	* @return : 해당회원의 찜목록 조회
	* @param :  WishListVO , ExhibitionVO , 회원ID  
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@RequestMapping("customerWishList.do")
	public ModelAndView addSearchWish(ExhibitionVO vo, @RequestParam("id") String id, WishListVO wl, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/Customer/CustomerWishList");
		List<WishListVO> li = customerService.wishListInsertSelect(vo, id, wl, request);
		mv.addObject("vo", li);
		
		return mv;
	}
	
	/*
	* customerWishDelete.do : 찜목록 삭제 컨트롤러     
	* @author : 권민성
	* @return : customerWishSelectList.do 컨트롤러로 리턴
	* @return : 해당회원의 찜목록 삭제
	* @param : WishListVO , ExhibitionVO , 회원ID  
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@RequestMapping("customerWishDelete.do")
	public ModelAndView deleteWish(ExhibitionVO vo, @RequestParam("id") String id, WishListVO wl, HttpServletRequest request) {
		System.out.println("deletecont / "+vo+""+ id+""+ wl+""+ request.getParameter("ExId"));
		customerService.wishDelete(vo, id, wl, request);
		System.out.println(vo+""+ id+""+ wl+""+ request.getParameter("ExId"));
		SearchWish(vo, id, wl, request);
		return SearchWish(vo, id, wl, request);
	}

}

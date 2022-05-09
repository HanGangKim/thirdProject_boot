package com.human.java.start.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.ExhibitionVO;
import com.human.java.service.ExhibitionService;

/*
* NoneMemberMain.do : 메인 페이지 컨트롤러  
* @author : 권민성 
* @return : /MainPage/Main.jsp
* @return : 전시회 예매 Top3 / 시작일이 가까운 전시회 Top4 / 마감일이 가까운 전시회 1개 / 랜덤 전시회 1개를 select 
* @param : ExhibitionVO vo (Model 객체)  , HttpServletRequest request (jsp에서 넘겨주는 값을 받기 위함)
* @throws : 따로 없음 
* @exception : DB 데이터 없을 시 View의 UI가 무너지는 문제발생 
**/

@Controller
@RequestMapping("/start/")
public class StartController {
	
	@Autowired
	private ExhibitionService exhibitionService;
	
	// 비회원 & 회원 메인페이지 
	// 최초시작 컨트롤러
		@RequestMapping("NoneMemberMain.do")
		public ModelAndView comingExhibition(HttpServletRequest request, ExhibitionVO vo) {
			
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("/MainPage/Main");
			
			// 상단
			mv.addObject("top3" , exhibitionService.top3Exhibition(vo));
			// 중앙(하)
			mv.addObject("vo", exhibitionService.comingExhibition(vo));
			// 중앙(상)
			mv.addObject("voRand", exhibitionService.randomExhibition(vo));
			// 하단
			mv.addObject("volast", exhibitionService.lastExhibition(vo));
			
			return mv;
		}
		
		
		

}

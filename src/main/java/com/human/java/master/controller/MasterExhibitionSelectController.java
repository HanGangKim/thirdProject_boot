package com.human.java.master.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.MasterExhibitionVO;
import com.human.java.service.MasterExhibitionService;

@Controller
@RequestMapping("/master/")
public class MasterExhibitionSelectController {
	
	@Autowired
	private MasterExhibitionService masterExhibitionService;
	

	/*
	* approveExhibition.do : 전시 waiting 페이지 컨트롤러 
	* @author : 정은성
	* @return : /Master/ApproveExhibition.jsp
	* @param : MasterCompanyVO 객체 
	* @throws : 따로 없음 
	* @exception : 따로 없음
	**/
	@RequestMapping("approveExhibition.do")
	public ModelAndView ApproveExhibition() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/Master/ApproveExhibition");
		mv.addObject("vo", masterExhibitionService.masterExhibition());
		return mv;
	}
	
	/*
	* masterExhibitionSearchTitleD.do :  
	* @author :  정은성
	* @return : A-jax를 통한 비동기통신(/Master/CheckDnR.jsp)
	* @return : 플래그 'D'인 업체 리스트 
	* @param : MasterCompanyVO 객체 
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@ResponseBody
	@RequestMapping("masterExhibitionSearchTitleD.do")
	public List<MasterExhibitionVO> masterExhibitionSearchTitleD (MasterExhibitionVO vo){
		String title = vo.getExhibition_title();
		List<MasterExhibitionVO> masterList = masterExhibitionService.masterExhibitionSearchTitleD(vo,title);
		return masterList;
	}
	
	/*
	* masterExhibitionSearchTitleR.do :  
	* @author :  정은성 
	* @return : A-jax를 통한 비동기통신(/Master/CheckDnR.jsp)
	* @return : 플래그 'R'인 업체 리스트 
	* @param : MasterCompanyVO 객체 
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@ResponseBody
	@RequestMapping("masterExhibitionSearchTitleR.do")
	public List<MasterExhibitionVO> masterExhibitionSearchTitleR (MasterExhibitionVO vo){
		String title = vo.getExhibition_title();  
		List<MasterExhibitionVO> masterList = masterExhibitionService.masterExhibitionSearchTitleR(vo,title);
		return masterList;
	}
	

}

package com.human.java.master.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.human.java.domain.MasterExhibitionVO;
import com.human.java.service.MasterExhibitionService;

@Controller
@RequestMapping("/master/")
public class MasterExhibitionUpdateController {
	
	@Autowired
	private MasterExhibitionService masterExhibitionService;
	
	/*
	* masterCompanyUpdate.do : 전시승인 (플래그 업데이트) 컨트롤러 
	* @author : 정은성
	* @return : approveExhibition.do 컨트롤러 호출  
	* @param : exhibition_id
	* @throws : 따로 없음 
	* @exception : 따로 없음
	**/
	@RequestMapping("masterExhibitionUpdate.do")
	public String masterExhibitionUpdate(MasterExhibitionVO vo) {
		
		masterExhibitionService.masterExhibitionUpdate(vo);
		return "redirect:approveExhibition.do";
		
	}
}

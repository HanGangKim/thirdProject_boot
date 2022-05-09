package com.human.java.company.controller;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.relational.core.mapping.Embedded.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.ReviewVO;
import com.human.java.service.CompanyService;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/company/")
public class CompanyExhibitionListController {
	@Autowired
	CompanyService companyService;

	
	/*
	* companyExhibitionList.do : 업체 전시회 전체 리스트 ( 해당 업체 ) 
	* @author : 김한수 
	* @return : 업체ID가 없을경우 /Company/CompanyMain.jsp
	* @return : 정상조회 될 경우 /Company/CompanyExhibitionList.jsp 
	* @param : ExhibitionVO vo 
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@RequestMapping("companyExhibitionList.do")
	public String exhibitionExhibitionList(ExhibitionVO vo , Model model) {
		String companyId = vo.getCompany_id();
		
		if(companyId == null) {
			return "/Company/CompanyMain";
		}
		
		
		List<ExhibitionVO>li = companyService.getExhibitionCompanyList(vo , companyId);
		if(li.isEmpty()) {
			String nullCheck = "등록한 전시회가 없습니다.";
			model.addAttribute("nullCheck" , nullCheck);
			return "/Company/CompanyExhibitionList";
		}else {
			model.addAttribute("CompanyExhibitionList", li);
			return "/Company/CompanyExhibitionList";
		}
		
	}
	

	/*
	* companyExhibitionDetail.do : 해당 업체 전시회 상세조회 
	* @author : 김한수
	* @return : /Company/CompanyExhibitionWriteUpdate.jsp
	* @param : ExhibitionVO
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@RequestMapping("companyExhibitionDetail.do")
	public String exhibitionExhibitionDetail(ExhibitionVO vo , Model model ) {
		model.addAttribute("CompanyExhibition", companyService.getExhibitionCompanyDetail(vo));
		return "/Company/CompanyExhibitionWriteUpdate";
	}
	

}

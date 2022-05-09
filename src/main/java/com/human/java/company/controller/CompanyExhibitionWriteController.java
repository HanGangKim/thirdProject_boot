package com.human.java.company.controller;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.service.CompanyService;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/company/")
public class CompanyExhibitionWriteController {
	
	@Autowired
	CompanyService companyService;

	
	/*
	* companyExhibitionWrite.do : 업체 전시회 등록
	* @author : 김한수 , 권민성
	* @return : redirect:/company/CompanyWriteWaiting.do
	* @param : ExhibitionVO vo, @RequestParam("file") MultipartFile file, @RequestParam("file_sub") MultipartFile file_sub
	* @throws : 따로 없음 
	* @exception : View에서 이미지가 업로드 되지 않을 경우 예외 발생 , View에서 필수 업로드 하도록 로직 수정 
	**/
	@RequestMapping("companyExhibitionWrite.do")
	public String exhibitionCompanyExhibitionWrite(ExhibitionVO vo, @RequestParam("file") MultipartFile file, @RequestParam("file_sub") MultipartFile file_sub) {
		companyService.companyInsertExhibition(vo);
		return "redirect:/company/CompanyWriteWaiting.do";
	}
	
	
	/*
	* companyExhibitionUpdate.do : 업체 전시회 수정
	* @author : 김한수 & 권민성 
	* @return : redirect:/company/CompanyWriteWaiting.do
	* @return : 플래그 'D'인 업체 리스트 
	* @param : ExhibitionVO vo 
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@RequestMapping("companyExhibitionUpdate.do")
	public String exhibitionCompanyExhibitionUpdate(ExhibitionVO vo) {
		companyService.companyUpdateExhibition(vo);
		return "redirect:/company/CompanyWriteWaiting.do";
	}
	
	/*
	* companyExhibitionDelete.do : 업체 전시회 삭제   
	* @author : 김한수
	* @return : 삭제에 실패할 경우 /Company/CompanyMain.jsp 
	* @return : 등록한 전시회가 없을 경우  nullCheck = "등록한 전시회가 없습니다." 설정 후 /Company/CompanyExhibitionList.jsp
	* @return : 삭제에 정상적으로 성공할 경우 /Company/CompanyExhibitionList.jsp 
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	@RequestMapping("companyExhibitionDelete.do")
	public String exhibitionCompanyExhibitionDelete(ExhibitionVO vo , Model model) {
		// [0] * 해당 회사의 아이디가 제대로 들어왔는지 확인 ( 셀렉트에서 사용되는 변수 ) 
		String companyId = vo.getCompany_id();
		if(companyId == null) {
			return "/Company/CompanyMain";
		}
		
		// -------------------------------------
		// [1] 딜리트 서비스를 호츨한다.
		companyService.companyExhibitionDelete(vo);
		// -------------------------------------
		// [2] 딜리트가 끝나면 셀렉트 서비스를 호출한다.
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
	
}

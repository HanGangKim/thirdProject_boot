package com.human.java.exhibition.controller;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.ibatis.javassist.expr.Instanceof;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.ExhibitionVO;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/exhibition/")
public class ExhibitionSearchController {

	@Autowired
	private ExhibitionService exhibitionService;

	/*
	* ExSearch.do : 전시회 날짜 검색 컨트롤러  
	* @author : 권민성 
	* @return : /Exhibition/ExhibitionDateList.jsp
	* @return : 해당 날짜에 속한 전시회 리스트 
	* @param : ExhibitionVO 객체 , totalDate(사용자가 입력한 날짜)
	* @throws : @Nullable 어노테이션 사용 , 예외가 발생할 경우 index.jsp 로 리턴 
	* @exception : 날짜가 주소값이 없을 경우 예외발생 ( @Nullable 과 if 조건문을 활용한 예외처리 ) 
	**/
	// 
	@RequestMapping("ExSearch.do")
	public ModelAndView exhibitionSearch(ExhibitionVO vo, @RequestParam("totalDate") @Nullable String totalDate) {
		ModelAndView mv = new ModelAndView();
		System.out.println(totalDate);
		System.out.println(totalDate instanceof String);
		
		if(!(totalDate instanceof String)) {
			mv.setViewName("redirect:/index.do");
			return mv;
		}
		
			mv.setViewName("/Exhibition/ExhibitionDateList");
			mv.addObject("vo", exhibitionService.exhibitionSearch(vo, totalDate, 8));
	
		return mv;
	}
	
	/*
	* ExSearchAjax.do : 전시회 날짜 검색 Ajax 
	* @author : 성유나  
	* @return : A-jax를 통한 비동기통신(/Exhibition/ExhibitionDateList.jsp)
	* @return : 해당 날짜에 속한 전시회 리스트  
	* @param : endRow ( 전시회 9개 ) , totalDate ( 사용자 입력 날짜 )
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/ 
	@ResponseBody
	@RequestMapping("ExSearchAjax.do")
	public Object exSearchTestAjax(@RequestParam("endRow") String endRow, @RequestParam("totalDate") String totalDate) {
		ExhibitionVO vo = null;
	    List<ExhibitionVO> list = exhibitionService.exhibitionSearch(vo, totalDate, Integer.parseInt(endRow) );
	    System.out.println(list.size());
	    return list;
	}
	
	/*
	* ExSearchTitle.do : 전시회 제목 조회  
	* @author : 김한수 
	* @return : A-jax를 통한 비동기통신(/Master/CheckDnR.jsp)
	* @return : 플래그 'D'인 업체 리스트 
	* @param : MasterCompanyVO 객체 
	* @throws : 따로 없음 
	* @exception : "'" (single quotation marks)가 들어갈 경우  Mybatis 예외발생 ( 컨트롤러 + 서비스 수정을 통한 예외해결 ) 
	* @version : 1.2
	**/
	// 전시회 제목검색
	@RequestMapping("ExSearchTitle.do")
	public ModelAndView exSearchTitle (ExhibitionVO vo) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/Exhibition/ExhibitionDateList");
		mv.addObject("vo", exhibitionService.exhibitionSearchTitle(vo));
		return mv;
	}

	/*
	* ExhibitionDetail.do : 전시회 상세조회 
	* @author : 권민성 
	* @return : /Exhibition/ExhibitionDetail.jsp
	* @return : 해당 전시회의 상세내용 
	* @param : 전시회 ID , ExhibitionVO vo
	* @throws : 따로 없음 
	* @exception : 따로 없음 
	**/
	// 전시회 상세조회
	@RequestMapping("ExhibitionDetail.do")
	public ModelAndView exhibitionDetail(ExhibitionVO vo, @RequestParam("id") String id) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/Exhibition/ExhibitionDetail");
		mv.addObject("vo", exhibitionService.exhibitionDetail(vo, id));
		return mv;
	}

}

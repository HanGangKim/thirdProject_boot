package com.human.java.exhibition.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.lang.Nullable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.ReviewVO;
import com.human.java.domain.TicketingVO;
import com.human.java.service.ExhibitionService;

@Controller
@RequestMapping("/exhibition/")
public class ExhibitionTicketingController {

	@Autowired
	private ExhibitionService exhibitionService;

	/*
	* ExhibitionTicketing.do : 전시회 티켓 예매 컨트롤러 
	* @author : 김한수 
	* @return : 예매성공시 Exhibition/ExhibitionPaySucess.do
	* @return : 예매실패시 Exhibition/ExhibitionPayFail.do
	* @param : TicketingVO vo , 해당 회원의 ID 
	* @throws : 따로 없음 
	* @exception : 따로 없음 / 중간에 결재 취소시 결제 실패 페이지 이동 
	**/
	@RequestMapping("ExhibitionTicketing.do")
	public ModelAndView ticketInsert(TicketingVO vo) {
		
		int result = exhibitionService.ticketInsert(vo);
		ModelAndView mv = new ModelAndView();
		
		if (result > 0) {
			// [1] 예매
			mv.setViewName("redirect:/exhibition/ExhibitionPaySucess.do");
			
			// [2] 찜목록 플래그 업데이트
			// 기존 Dao -> 'ticketInsert' Service 이동
			return mv;

		} else {
			mv.setViewName("redirect:/exhibition/ExhibitionPayFail.do");
			return mv;
		}
	}

	
	/*
	* ExhibitionTicketingSelect.do : 예매내역 조회 컨트롤러    
	* @author : 김한수 
	* @return : 예매 된 내역이 없을 경우 "nullCheck" model 리턴
	* @return : 예매내역ID가 있을 경우 /HostingQR/HostingQR.jsp 로 이동 ( View의 QR 티켓 출력 ) 
	* @param : 회원ID , 티켓팅ID  
	* @throws : 따로 없음 
	* @exception : 따로 없음
	**/
	@RequestMapping("ExhibitionTicketingSelect.do")
	public String ticketSelect(Model model, @RequestParam("id") String id , @Nullable @RequestParam("ticketing_id") String ticketing_id , HttpSession session) {

		HashMap map = new HashMap();
		map.put("id", id);
		List<TicketingVO> li =  exhibitionService.ticketSelect(map, id , ticketing_id);
		
		if(li.isEmpty()) {
			String nullCheck = "예매내역이 없습니다.";
			model.addAttribute("nullCheck" , nullCheck);
			return "/Customer/CustomerTicket";
			
		}
		
		if(!(ticketing_id instanceof String)) {
			model.addAttribute("selectList", li);
			return "/Customer/CustomerTicket";
			
		}else {
			model.addAttribute("selectList", li);
			return "/HostingQR/HostingQR";
		}
		

	}

}

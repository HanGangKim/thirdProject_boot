package com.human.java.service;

import java.util.HashMap;
import java.util.List;

import org.springframework.web.bind.annotation.RequestParam;

import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.TicketingVO;


public interface ExhibitionService {			
	// 전시회 Top4
	public List<ExhibitionVO> comingExhibition(ExhibitionVO vo);

	// 예매율 Top3
	public List<ExhibitionVO> top3Exhibition(ExhibitionVO vo);
	
	// 램덤 전시회 뽑기
	public List<ExhibitionVO> randomExhibition(ExhibitionVO vo);
	
	// 마감임박 전시회 뽑기
	public ExhibitionVO lastExhibition(ExhibitionVO vo);
	
	// 전시회 날짜검색
	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String totalDate, int endRow);
	
	// 전시회 제목검색
	public List<ExhibitionVO> exhibitionSearchTitle (ExhibitionVO vo);
	
	// 전시회 상세조회
	public ExhibitionVO exhibitionDetail(ExhibitionVO vo, String id);
	
	// 티켓팅 
	public int ticketInsert(TicketingVO vo);
		
	// 티켓팅 내역 조회
	public List<TicketingVO> ticketSelect(HashMap map, String id , String ticketing_id);

	
}

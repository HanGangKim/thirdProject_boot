package com.human.java.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.TicketingVO;
import com.human.java.domain.WishListVO;

@Mapper
public interface ExhibitionMapper {

	// 비회원 메인	커밍
	public List<ExhibitionVO> comingExhibition();
	
	// 랜덤뽑기
	public List<ExhibitionVO> randomExhibition(ExhibitionVO vo);
		
	// 마감임박
	public ExhibitionVO lastExhibition(ExhibitionVO vo);
	
	// 예매율 Top3
	public List<ExhibitionVO> top3Exhibition(ExhibitionVO vo);
	
	// 전시회 날짜검색
	public List<ExhibitionVO> exhibitionSearch(Map parms);
	
	// 전시회 제목검색
	public List<ExhibitionVO> exhibitionSearchTitle(ExhibitionVO vo);
	
	// 전시회 상세조회
	public ExhibitionVO exhibitionDetail(ExhibitionVO vo, String id);
	
	// 티켓팅 
	public int ticketInsert(TicketingVO vo);
	
	// 티켓팅 내역 조회
	public List<TicketingVO> ticketSelect(HashMap map, String id , String ticketing_id);
	
	// 찜목록 플래그 업데이트
	public int wishListflagChange(WishListVO wsvo);
	
	


}

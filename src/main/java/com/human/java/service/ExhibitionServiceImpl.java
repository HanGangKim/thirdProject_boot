package com.human.java.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.TicketingVO;
import com.human.java.domain.WishListVO;
import com.human.java.mapper.ExhibitionMapper;


@Service
public class ExhibitionServiceImpl implements ExhibitionService{

	@Autowired
	ExhibitionMapper exhibitionMapper;
	

	@Override
	public List<ExhibitionVO> comingExhibition(ExhibitionVO vo) {
		return exhibitionMapper.comingExhibition();
	}
	
	
	@Override
	public List<ExhibitionVO> top3Exhibition(ExhibitionVO vo) {		
	return exhibitionMapper.top3Exhibition(vo);
	}
	
	@Override
	public List<ExhibitionVO> randomExhibition(ExhibitionVO vo) {
		return exhibitionMapper.randomExhibition(vo);
	}

	
	@Override
	public ExhibitionVO lastExhibition(ExhibitionVO vo) {
		return exhibitionMapper.lastExhibition(vo);
	}
	
	@Override
	public List<ExhibitionVO> exhibitionSearch(ExhibitionVO vo, String totalDate, int endRow) {
		
		// [1] "to"를 기준으로 문자열 자르기
		String[] date=totalDate.split(" to ");
		String st = date[0];
		st = st.replace("-", ".");
		String ed = date[1];
		ed = ed.replace("-", ".");
		
		// [2] Select 위한 Map 설정
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("vo", vo);
		parms.put("st", st);
		parms.put("ed", ed);
		parms.put("endRow", endRow+1);
		
		return exhibitionMapper.exhibitionSearch(parms);
	}

	@Override
	public ExhibitionVO exhibitionDetail(ExhibitionVO vo, String id) {
		return exhibitionMapper.exhibitionDetail(vo, id);
	}

	@Override
	public List<ExhibitionVO> exhibitionSearchTitle(ExhibitionVO vo) {
		return exhibitionMapper.exhibitionSearchTitle(vo);
	}
	
	@Override
	public int ticketInsert(TicketingVO vo) {
		
		// [2] 찜목록 플래그 업데이트
		// 결제시 찜목록 내역 플래그 변경 -> 결제한 전시회는 찜목록에서 보이지 않음
		WishListVO wsvo = new WishListVO();
		int exhibition_id = Integer.parseInt(vo.getExhibition_id());
		String customer_id = vo.getCustomer_id();
		wsvo.setExhibition_id(exhibition_id);
		wsvo.setCustomer_id(customer_id);
		exhibitionMapper.wishListflagChange(wsvo);
		
		return exhibitionMapper.ticketInsert(vo);
	}

	@Override
	public List<TicketingVO> ticketSelect(HashMap map,  String id , String ticketing_id) {
		return exhibitionMapper.ticketSelect(map , id , ticketing_id);
	}

	
}

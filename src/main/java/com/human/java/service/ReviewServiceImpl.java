package com.human.java.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.domain.ReviewVO;
import com.human.java.mapper.ReviewMapper;

@Service("reviewService")
public class ReviewServiceImpl implements ReviewService {

	@Autowired 
	private ReviewMapper reviewMapper; 
	
	@Override
	public int insertReview(ReviewVO vo) {
		
		// 글등록시 티켓팅 내역 플래그 업데이트
		reviewMapper.flagChange(vo);
		
	 return	reviewMapper.insertReview(vo);	
	}

	@Override
	public void updateReview(ReviewVO vo) {
		reviewMapper.updateReview(vo);
		
	}

	@Override
	public void deleteReview(HashMap map) {
		reviewMapper.deleteReview(map);
		
	}

	@Override
	public List<ReviewVO> getReviewList(HashMap map, int endRow) {
		
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("map", map);
		// 검색어가 있을 경우 해당 검색어를 키와 값으로 설정
		parms.put("searchKeyword", map.get("searchKeyword"));
		// A-jax를 위한 endRow 설정
		parms.put("endRow", endRow+1);
		
		return reviewMapper.getReviewList(parms);
	}

	@Override
	public List<ReviewVO> getMyReviewList(HashMap map , String id) {
		return reviewMapper.getMyReviewList(map , id);
	}

	
	@Override
	public ReviewVO getMyReview(ReviewVO vo) {
		return reviewMapper.getMyReview(vo);
	}
	
}

package com.human.java.mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.human.java.domain.ReviewVO;
import com.human.java.domain.TicketingVO;

@Mapper
public interface ReviewMapper {

	// 글 등록
	int insertReview(ReviewVO vo);
	
	// 글 등록시 구매내역 플래그 업데이트
	void flagChange(ReviewVO vo);

	// 글 수정
	void updateReview(ReviewVO vo);

	// 글 삭제
	void deleteReview(HashMap map);

	// 글 목록 조회
	List<ReviewVO> getReviewList(Map parms);
	
	// 나의 리뷰 리스트
	List<ReviewVO> getMyReviewList(HashMap map , String id);

	// 나의 리뷰 상세 조회
	ReviewVO getMyReview(ReviewVO vo);
	

}

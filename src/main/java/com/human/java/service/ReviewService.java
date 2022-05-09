package com.human.java.service;

import java.util.HashMap;
import java.util.List;

import com.human.java.domain.ReviewVO;

public interface ReviewService {
	
		// 글 등록
		int insertReview(ReviewVO vo);

		// 글 수정
		void updateReview(ReviewVO vo);

		// 글 삭제
		void deleteReview(HashMap map);
		
		// 리뷰 전체 조회
		List<ReviewVO> getReviewList(HashMap map, int endRow);

		// 나의 리뷰 조회
		List<ReviewVO> getMyReviewList(HashMap map , String id);

		// 나의 리뷰 상세 조회
		ReviewVO getMyReview(ReviewVO vo);

}

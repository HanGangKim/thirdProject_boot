package com.human.java.exhibition.controller;

import java.util.HashMap;
import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.human.java.domain.ReviewVO;
import com.human.java.service.ReviewService;

@Controller
@RequestMapping("/exhibition/")
//리뷰 조회 컨트롤러
public class ExhibitionReviewController {

	@Autowired
	private ReviewService reviewService;

	
	/*
	* getReviewList.do : 모든 사용자의 리뷰 조회 컨트롤러   
	* @author : 김한수 
	* @return : /Exhibition/ExhibitionReviewList.jsp
	* @return : 모든 전시리스트
	* @param :  전시회 제목 검색 키워드가 없을 경우 모든 전시리뷰 조회 / 있을 경우 해당되는 전시제목의 리뷰만 조회
	* @throws : 따로 없음 
	* @exception : " ' " (single quotation marks)가 들어갈 경우  Mybatis 예외발생 ( View의 JS 특수기로 입력방지 로직추가 ) 
	**/
	@RequestMapping("getReviewList.do")
	public String getReviewList(Model model, String searchKeyword) {

		HashMap map = new HashMap();
		map.put("searchKeyword", searchKeyword);
		ReviewVO vo = new ReviewVO();
		// DB 접속해서 데이터 가져오기
		List<ReviewVO> list = reviewService.getReviewList(map, 8);
		System.out.println(list.size());
		model.addAttribute("reviewList", list);

		return "/Exhibition/ExhibitionReviewList";
	}

	/*
	* getReviewListAjax.do : 모든 사용자의 리뷰 조회 컨트롤러  (A-jax)
	* @author : 성유나 
	* @return : A-jax 비동기 통신(/Exhibition/ExhibitionReviewList.jsp)
	* @return : 모든 전시리스트
	* @param :  endRow(View 출력 갯수 9개)
	* @throws : 따로 없음 
	* @exception : 따로 없음
	**/
	@ResponseBody
	@RequestMapping("getReviewListAjax.do")
	public Object getReviewListAjax(Model model, @RequestParam("endRow") String endRow) {

		HashMap map = new HashMap();
		ReviewVO vo = new ReviewVO();
		List<ReviewVO> list = reviewService.getReviewList(map, Integer.parseInt(endRow));

		return list;
	}

	
	/*
	* getMyReviewList.do : 나의 리뷰 조회 컨트롤러   
	* @author : 김한수 
	* @return : /Customer/CustomerExhibitionMyReviewList.jsp
	* @return : 나의 전시리스트
	* @param :  사용자 ID
	* @throws : 따로 없음 
	* @exception : 따로 없음
	**/
	// 나의 리뷰 리스트
	@RequestMapping("getMyReviewList.do")
	public String getMyReviewList(Model model, @RequestParam("id") String id) {

		HashMap map = new HashMap();
		map.put("id", id);

		List<ReviewVO> li = reviewService.getMyReviewList(map, id);

		if (li.isEmpty()) {
			String nullCheck = "작성한 리뷰가 없습니다.";
			model.addAttribute("nullCheck", nullCheck);
			return "/Customer/CustomerExhibitionMyReviewList";

		} else {
			model.addAttribute("myReviewList", li);
			return "/Customer/CustomerExhibitionMyReviewList";
		}

	}

	/*
	* getMyReview.do : 나의 리뷰 상세조회 
	* @author : 김한수 
	* @return : /Customer/CustomerExhibitionReviewWriteUpdate.jsp
	* @return : 나의 리뷰 상세내용
	* @param :  리뷰 ID
	* @throws : 따로 없음 
	* @exception : 따로 없음
	**/
	@RequestMapping("getMyReview.do")
	public String getMyReview(Model model, ReviewVO vo) {

		model.addAttribute("review", reviewService.getMyReview(vo));
		return "/Customer/CustomerExhibitionReviewWriteUpdate";
	}

	/*
	* saveReview.do : 리뷰 입력 컨트롤러
	* @author : 김한수 
	* @return : /Customer/CustomerExhibitionMyReviewList.jsp
	* @return : 나의 리뷰 리스트 
	* @param :  ReviewVO 객체
	* @throws : 따로 없음 
	* @exception : 따로 없음
	**/
	@RequestMapping("saveReview.do")
	public String saveReview(ReviewVO vo, Model model) {

		// [1] insert
		reviewService.insertReview(vo);

		// [2] update
		// (기존) insertReview Dao -> (boot) nsertReview

		// [3] 셀렉트
		// getMyReviewList 서비스 호출
		String id = vo.getCustomer_id();
		HashMap map = new HashMap();
		map.put("id", id);
		model.addAttribute("myReviewList", reviewService.getMyReviewList(map, id));
		return "/Customer/CustomerExhibitionMyReviewList";
	}

	/*
	* deleteReview.do : 나의 리뷰 삭제    
	* @author : 김한수 
	* @return : /Customer/CustomerExhibitionMyReviewList.jsp
	* @return : 나의 리뷰 리스트 
	* @param :  ReviewVO vo 객체 ( 리뷰ID , 회원ID )
	* @throws : 따로 없음 
	* @exception : 따로 없음
	**/
	@RequestMapping("deleteReview.do")
	public String deleteReview(ReviewVO vo, Model model) {
		String id = vo.getCustomer_id();
		int review_id = vo.getReview_id();

		// [1] 삭제
		HashMap delete_map = new HashMap();
		delete_map.put("review_id", review_id);
		reviewService.deleteReview(delete_map);

		// [2] 조회
		HashMap map = new HashMap();
		map.put("id", id);
		List<ReviewVO> li = reviewService.getMyReviewList(map, id);
		if (li.isEmpty()) {
			String nullCheck = "작성한 리뷰가 없습니다.";
			model.addAttribute("nullCheck", nullCheck);
		} else {
			model.addAttribute("myReviewList", li);
		}
		return "/Customer/CustomerExhibitionMyReviewList";
	}

	/*
	* deleteReview.do : 나의 리뷰 수정    
	* @author : 김한수 
	* @return : /Customer/CustomerExhibitionMyReviewList.jsp
	* @return : 나의 리뷰 리스트 
	* @param :  ReviewVO vo 객체 
	* @throws : 따로 없음 
	* @exception : 따로 없음
	**/
	@RequestMapping("updateReview.do")
	public String updateReview(ReviewVO vo, Model model) {

		// [1] 수정
		reviewService.updateReview(vo);

		// [2] 셀렉트
		String id = vo.getCustomer_id();
		HashMap map = new HashMap();
		map.put("id", id);
		model.addAttribute("myReviewList", reviewService.getMyReviewList(map, id));
		return "/Customer/CustomerExhibitionMyReviewList";
	}

}
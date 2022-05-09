package com.human.java.mapper;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.annotations.Mapper;

import com.human.java.domain.CustomerVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.WishListVO;

@Mapper
public interface CustomerMapper {
	// 일반회원 가입
	public int customerInsert(CustomerVO vo);
	
	// 일반회원 로그인
	public CustomerVO customerLogin(CustomerVO vo);
	
	// 아이디 중복체크
	public int idCheck(String id);
	
	// 회원 정보수정
	public void customerUpdateInfo(CustomerVO vo);
	
	// 찜목록 입력
	public void wishListInsert(Map parms);
	
	// 찜목록 조회
	public List<WishListVO> wishListSearch(Map parms);
	
	// 찜목록 삭제
	public int wishlistdelete(Map parms);
	
	// 비밀번호 확인
	public CustomerVO customerConfirmPassword(CustomerVO vo);
	
	// 비밀번호 찾기
	public CustomerVO customerFindPassword(CustomerVO vo);
	
	// 회원 탈퇴(회원정보)
	public int customerTotalDelete(CustomerVO vo);
	
	// 회원탈퇴(리뷰)
	public int customerReviewDelete(CustomerVO vo);
	
	// 회원탈퇴(구매내역)
	public int customerTicketingDelete(CustomerVO vo);
	
	// 회원탈퇴(구매내역)
	public int customerWishListDelete(CustomerVO vo);

}

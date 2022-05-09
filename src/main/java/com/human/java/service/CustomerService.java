package com.human.java.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.CustomerVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.WishListVO;


public interface CustomerService {

	// 회원가입
	public int customerInsert(CustomerVO vo);
	
	// 로그인
	public CustomerVO customerLogin(CustomerVO vo);
	
	// 아이디 중복체크
	public int idCheck(CustomerVO vo, String id);
	
	//찜목록(입력+조회)
	public List<WishListVO> wishListInsertSelect(ExhibitionVO vo, String id, WishListVO wl,  HttpServletRequest request);

	//찜목록(조회전용)
	public List<WishListVO> wishListSelect(ExhibitionVO vo, String id, WishListVO wl,  HttpServletRequest request);
	
	//정보수정
	public void customerUpdateInfo(CustomerVO vo);
	
	//비밀번호 확인
	public CustomerVO customerConfirmPassword(CustomerVO vo);
		
	//비밀번호 찾기
	public CustomerVO customerFindPassword(CustomerVO vo);
		
	// 회원내역 삭제 
	public int customerTotalDelete(CustomerVO vo);
	
	//찜목록
	public int wishDelete(ExhibitionVO vo, String id, WishListVO wl,  HttpServletRequest request);

	
}

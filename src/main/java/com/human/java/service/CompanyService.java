package com.human.java.service;

import java.util.List;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.CustomerVO;
import com.human.java.domain.ExhibitionVO;

public interface CompanyService {

	// 회원가입
	public int companyInsert(CompanyVO vo);
		
	// 로그인
	public CompanyVO companyLogin(CompanyVO vo);
	
	// 아이디 중복체크
	public int idCheck(CompanyVO vo, String id);
	
	// 업체 전시회 등록
	public int companyInsertExhibition (ExhibitionVO vo);
		
	// 업체 전시회 수정 
	public int companyUpdateExhibition (ExhibitionVO vo);
	
	// 업체 전시회 등록 삭제
	public int companyExhibitionDelete(ExhibitionVO vo);
	 	
	// 업체 전시회 등록 리스트
	public List<ExhibitionVO> getExhibitionCompanyList(ExhibitionVO vo , String companyId);
		
	// 업체 전시회 등록 상세조회 
	public ExhibitionVO getExhibitionCompanyDetail(ExhibitionVO vo);
	
	// 업체 비밀번호 확인
	public CompanyVO companyConfirmpassword(CompanyVO vo);
	
	// 업체 정보수정
	public void companyUpdateInfo(CompanyVO vo);
	
	// 업체 비밀번호찾기 + 메일 기능
	public CompanyVO companyFindPassword(CompanyVO vo);
	
	// 업체 정보삭제
	public int companyTotalDelete(CompanyVO vo);
	
	
}
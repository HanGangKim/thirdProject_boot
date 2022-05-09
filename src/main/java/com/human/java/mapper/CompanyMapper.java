package com.human.java.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.ExhibitionVO;

@Mapper
public interface CompanyMapper {
	// 업체 회원가입
	public int companyInsert(CompanyVO vo);
	
	// 업체 로그인
	public CompanyVO companyLogin(CompanyVO vo);
	
	// 아이디 중복체크
	public int idCheck(String id);
	
	// 업체 전시회 등록
	public int companyInsertExhibition(ExhibitionVO vo);
	
	// 업체 전시회 수정 
	public int companyUpdateExhibition(ExhibitionVO vo);
	
	// 업체 전시회 등록 삭제
	int companyExhibitionDelete(ExhibitionVO vo);
	
	// 업체 전시회 조회
	public List<ExhibitionVO> getExhibitionCompanyList(String companyId);
	
	// 업체 전시회 상세조회
	public ExhibitionVO getExhibitionCompanyDetail(ExhibitionVO vo);
	
	// 업체 비밀번호 확인
	public CompanyVO companyConfirmpassword(CompanyVO vo);
	
	// 업체 정보수정
	public void companyUpdateInfo(CompanyVO vo);
	
	// 업체 비밀번호 확인
	public CompanyVO companyFindPassword(CompanyVO vo);
	
	// 업체 정보삭제
	public int companyTotalDelete(CompanyVO vo);
	
	// 업체 등록정보삭제
	public int companyExhibitionDelete(CompanyVO vo);
	
	// 업체 전시회 전체 삭제
	int companyExhibitionDeleteAll(CompanyVO vo);
		


}

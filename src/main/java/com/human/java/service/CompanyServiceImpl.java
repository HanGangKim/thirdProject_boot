package com.human.java.service;

import java.util.List;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.domain.CompanyVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.mapper.CompanyMapper;

@Service("companyService")
public class CompanyServiceImpl implements CompanyService{

	@Autowired 
	private CompanyMapper companyMapper;

	@Override
	public int companyInsert(CompanyVO vo) {
		return companyMapper.companyInsert(vo);
	}

	@Override
	public CompanyVO companyLogin(CompanyVO vo) {
		return companyMapper.companyLogin(vo);
	}

	@Override
	public int idCheck(CompanyVO vo, String id) {
		if(companyMapper.idCheck(id)==0) {
			return 0;
		} else {
			return 1;
		}
	}
	
	@Override
	public List<ExhibitionVO> getExhibitionCompanyList(ExhibitionVO vo, String companyId) {
		return companyMapper.getExhibitionCompanyList(companyId);
	}

	@Override
	public ExhibitionVO getExhibitionCompanyDetail(ExhibitionVO vo) {
	
		return companyMapper.getExhibitionCompanyDetail(vo);
	}


	@Override
	public int companyInsertExhibition(ExhibitionVO vo) {		
		return companyMapper.companyInsertExhibition(vo);
	}

	@Override
	public int companyExhibitionDelete(ExhibitionVO vo) {
	return	companyMapper.companyExhibitionDelete(vo);
		
	}
	
	@Override
	public int companyUpdateExhibition(ExhibitionVO vo) {
		return companyMapper.companyUpdateExhibition(vo);
	}
	
	
	@Override
	public CompanyVO companyConfirmpassword(CompanyVO vo) {
		return companyMapper.companyConfirmpassword(vo);
	}
	
	@Override
	public void companyUpdateInfo(CompanyVO vo) {
		companyMapper.companyUpdateInfo(vo);
	}
		
	@Override
	public CompanyVO companyFindPassword(CompanyVO vo) {
		return companyMapper.companyFindPassword(vo);
	}
	
	@Override
	public int companyTotalDelete(CompanyVO vo) {
		companyMapper.companyExhibitionDeleteAll(vo);
		return companyMapper.companyTotalDelete(vo);
	}
	
}


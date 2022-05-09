package com.human.java.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import com.human.java.domain.MasterCompanyVO;

@Mapper
public interface MasterCompanyMapper {

	// select company
	public List<MasterCompanyVO> masterCompany();
	
	// update company
	void masterCompanyUpdate(MasterCompanyVO vo);
	
	// select company D&R
	public List<MasterCompanyVO> masterCompanyDR();
	
	// select company Done
	public List<MasterCompanyVO> masterCompanySearchTitleD(Map parms);
	
	// select company Reject
	public List<MasterCompanyVO> masterCompanySearchTitleR(Map parms);
	
}

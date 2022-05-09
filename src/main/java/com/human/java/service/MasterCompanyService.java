package com.human.java.service;

import java.util.List;

import com.human.java.domain.MasterCompanyVO;

public interface MasterCompanyService {
	
	// company select 
	public List<MasterCompanyVO> masterCompany ();
	
	// company update
	public void masterCompanyUpdate(MasterCompanyVO vo);
	
	// company DnR
	public List<MasterCompanyVO> masterCompanyDR();
	
	//company Title Search select Done
	public List<MasterCompanyVO> masterCompanySearchTitleD(MasterCompanyVO vo, String title);
	
	//company Title Search select Reject
	public List<MasterCompanyVO> masterCompanySearchTitleR(MasterCompanyVO vo, String title);
	
}

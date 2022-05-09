package com.human.java.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.human.java.domain.MasterCompanyVO;
import com.human.java.mapper.MasterCompanyMapper;

@Service("masterCompanyService")
public class MasterCompanyServiceImpl implements MasterCompanyService{
	
	@Autowired
	private MasterCompanyMapper masterCompanyMapper;
	

	@Override
	public List<MasterCompanyVO> masterCompany() {
		return masterCompanyMapper.masterCompany();
	}
	
	
	@Override
	public void masterCompanyUpdate(MasterCompanyVO vo) {
		masterCompanyMapper.masterCompanyUpdate(vo);
		
	}
	
	@Override
	public List<MasterCompanyVO> masterCompanyDR() {
		return masterCompanyMapper.masterCompanyDR();
	}
	
	@Override
	public List<MasterCompanyVO> masterCompanySearchTitleD(MasterCompanyVO vo, String title) {	
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("title", title);
		return masterCompanyMapper.masterCompanySearchTitleD(parms);
	}

	@Override
	public List<MasterCompanyVO> masterCompanySearchTitleR(MasterCompanyVO vo, String title) {
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("title", title);
		return masterCompanyMapper.masterCompanySearchTitleR(parms);
	}

	
}

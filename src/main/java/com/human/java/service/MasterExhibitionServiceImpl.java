package com.human.java.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.human.java.domain.MasterCompanyVO;
import com.human.java.domain.MasterExhibitionVO;
import com.human.java.mapper.MasterExhibitionMapper;

@Service("masterExhibitionService")
public class MasterExhibitionServiceImpl implements MasterExhibitionService{
	
	@Autowired
	private MasterExhibitionMapper masterExhibitionMapper;
	
	@Override
	public List<MasterExhibitionVO>  masterExhibition() {
		return masterExhibitionMapper.masterExhibition();
	}
	
	@Override
	public void masterExhibitionUpdate(MasterExhibitionVO vo) {
		masterExhibitionMapper.masterExhibitionUpdate(vo);
	}
	
	@Override
	public List<MasterExhibitionVO> masterExhibitionDR() {
		return masterExhibitionMapper.masterExhibitionDR();
	}
	
	@Override
	public List<MasterExhibitionVO> masterExhibitionSearchTitleD(MasterExhibitionVO vo, String title) {
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("title", title);
		return masterExhibitionMapper.masterExhibitionSearchTitleD(parms);
	}

	@Override
	public List<MasterExhibitionVO> masterExhibitionSearchTitleR(MasterExhibitionVO vo, String title) {
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("title", title);
		return masterExhibitionMapper.masterExhibitionSearchTitleR(parms);
	}

	
}


package com.human.java.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.human.java.domain.MasterExhibitionVO;

@Mapper
public interface MasterExhibitionMapper {

	// select exhibition
	public List<MasterExhibitionVO> masterExhibition();
	
	// update exhibition
	void masterExhibitionUpdate(MasterExhibitionVO vo);
	
	// select exhibition D&R
	public List<MasterExhibitionVO> masterExhibitionDR();
	
	// select exhibition Done
	public List<MasterExhibitionVO> masterExhibitionSearchTitleD(Map parms);
	
	// select exhibition Reject
	public List<MasterExhibitionVO> masterExhibitionSearchTitleR(Map parms);
}

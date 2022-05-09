package com.human.java.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.human.java.domain.CustomerVO;
import com.human.java.domain.ExhibitionVO;
import com.human.java.domain.WishListVO;
import com.human.java.mapper.CustomerMapper;

@Service("customerService")
public class CustomerServiceImpl implements CustomerService{

	@Autowired 
	private CustomerMapper customerMapper;
	
	@Override
	public int customerInsert(CustomerVO vo) {
		return customerMapper.customerInsert(vo);
	}

	@Override
	public CustomerVO customerLogin(CustomerVO vo) {
		return customerMapper.customerLogin(vo);
	}
	
	
	@Override
	public int idCheck(CustomerVO vo, String id) {
		if(customerMapper.idCheck(id)==0) {
			return 0;
		}else {
		return 1;
		}
	}
	
	@Override
	public List<WishListVO> wishListInsertSelect(ExhibitionVO vo, String id, WishListVO wl, HttpServletRequest request) {
		
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("wl", wl);
		parms.put("id", id);
		String userId = (String)request.getSession().getAttribute("userId");
		parms.put("request", userId);
		
		// [1] 찜목록 입력
		customerMapper.wishListInsert(parms);
		
		// [2] 찜목록 조회
		return customerMapper.wishListSearch(parms);
	}
	
	@Override
	public List<WishListVO> wishListSelect(ExhibitionVO vo, String id, WishListVO wl, HttpServletRequest request) {
		// 찜목록 조회
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("wl", wl);
		parms.put("id", id);
		String userId = (String)request.getSession().getAttribute("userId");
		parms.put("request", userId);

		return customerMapper.wishListSearch(parms);
	}
	
	@Override
	public void customerUpdateInfo(CustomerVO vo) {	
		customerMapper.customerUpdateInfo(vo);
	}
	
	@Override
	public CustomerVO customerConfirmPassword(CustomerVO vo) {
		return customerMapper.customerConfirmPassword(vo);
	}
	
	@Override
	public CustomerVO customerFindPassword(CustomerVO vo) {
		return customerMapper.customerFindPassword(vo);
	}

	@Override
	public int customerTotalDelete(CustomerVO vo) {
		
		customerMapper.customerReviewDelete(vo);
		customerMapper.customerTicketingDelete(vo);
		customerMapper.customerWishListDelete(vo);
		
		return customerMapper.customerTotalDelete(vo);
	}

	@Override
	public int wishDelete(ExhibitionVO vo, String id, WishListVO wl, HttpServletRequest request) {
		
		Map<String, Object> parms = new HashMap<String, Object>();
		parms.put("wl", wl);
		parms.put("id", id);
		parms.put("ex", request.getParameter("ExId"));
		String userId = (String)request.getSession().getAttribute("userId");
		parms.put("request", userId);
	
		return customerMapper.wishlistdelete(parms);
	}
	
	
}

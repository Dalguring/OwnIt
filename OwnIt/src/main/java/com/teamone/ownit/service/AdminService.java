package com.teamone.ownit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Service;

import com.teamone.ownit.mapper.AdminMapper;
import com.teamone.ownit.vo.AdminProductVO;

@Service
public class AdminService {

	@Autowired
	private AdminMapper mapper;
	
	// 김소희
	
	// 전체 상품 목록 갯수 조회
	public int getProductListCount(String searchType, String keyword) {
		return mapper.selectProductListCount(searchType, keyword);
	}
	
	// ProductList 조회
	public List<AdminProductVO> getProductList(int startRow, int listLimit, String searchType, String keyword) {
		return mapper.selectProductList(startRow, listLimit, searchType, keyword);
	}
	
	// Product 등록 (글쓰기)
	public int registProduct(AdminProductVO product) {
		return mapper.insertProduct(product);
	}
	// Product 등록 (글쓰기) + 이미지
	public int registProductImage(AdminProductVO product) {
		return mapper.insertProductImage(product);
	}


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 정채연 - 300
	
}

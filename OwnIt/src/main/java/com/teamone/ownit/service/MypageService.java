package com.teamone.ownit.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.teamone.ownit.mapper.MypageMapper;
import com.teamone.ownit.vo.MemberVO;
import com.teamone.ownit.vo.MypageSellListVO;
import com.teamone.ownit.vo.MypageVO;
import com.teamone.ownit.vo.WishlistVO;

@Service
public class MypageService {

	@Autowired
	private MypageMapper mapper;

	// 류혜지

	// 회원 정보 조회 수행 getMemberInfo()
	public MypageVO getMemberInfo(String id) {
		return mapper.selectMemberInfo(id);
	}

	public int getMySellListCount(String searchType, String keyword, String id) {
		return mapper.selectMySellListCount(searchType, keyword, id);
	}

	public List<MypageSellListVO> getMySell(int startRow, int listLimit, String searchType, String keyword, String id) {
		return mapper.selectMySell(startRow, listLimit, searchType, keyword, id);
	}

	public int modifyMember(MemberVO member, String newPasswd) {
		return mapper.updateMember(member, newPasswd);
	}

	public List<WishlistVO> getwishlist(String id) {
		return mapper.selectWishlist(id);
	}


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 정채연 - 300
	
}

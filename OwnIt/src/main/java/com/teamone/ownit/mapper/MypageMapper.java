package com.teamone.ownit.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.teamone.ownit.vo.AccountVO;
import com.teamone.ownit.vo.AddressVO;
import com.teamone.ownit.vo.MemberVO;
import com.teamone.ownit.vo.MypageSellListVO;
import com.teamone.ownit.vo.MypageVO;
import com.teamone.ownit.vo.Order_buyMyVO;
import com.teamone.ownit.vo.Order_buyVO;
import com.teamone.ownit.vo.WishlistVO;

public interface MypageMapper {

	
	
	// 류혜지
	// 회원 정보 조회에 필요한 selectMemberInfo() 메서드 정의
	MypageVO selectMemberInfo(String id);
	
	//판매내역 목록갯수
	int selectMySellListCount(@Param("searchType") String searchType, @Param("keyword") String keyword, @Param("id") String id); 
	
	//판매내역 목록
	List<MypageSellListVO> selectMySell(
			@Param("startRow") int startRow, @Param("listLimit") int listLimit,
			@Param("searchType") String searchType, @Param("keyword") String keyword, @Param("id") String id);

//	int updateMember(@Param("member") MemberVO member, @Param("newPasswd") String newPasswd);
//
//	List<WishlistVO> selectWishlist(String id);

	

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//비밀번호 수정
	int updateMember(@Param("member") MemberVO member, @Param("secureNewPassword") String secureNewPassword);
	
	//위시리스트 목록
	List<WishlistVO> selectWishlist(String id);
	
	//패스워드 조회
	String selectPasswd(String sId);
	
	//주소록 목록
	List<AddressVO> selectAddress(String id);

	//주소록 추가
	int insertAddress(AddressVO address);

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	// 정채연 - 300
	int selectAccountCount(int member_idx);

	int insertAccount(@Param("account") AccountVO account, @Param("member_idx") int member_idx, @Param("accountCount") int accountCount);

	List<AccountVO> selectAccountList(int member_idx);

	int updateAccount(AccountVO account);

	int deleteAccount(int account_idx);

	int defaultAccount(@Param("member_idx") int member_idx, @Param("account_idx") int account_idx);

	int otherAccount(int member_idx);

	List<Order_buyMyVO> selectOrderList(@Param("startRow") int startRow, @Param("listLimit") int listLimit, @Param("date1") String date1, @Param("date2") String date2, @Param("member_idx") int member_idx);

	int selectOrderListCount(@Param("date1") String date1, @Param("date2") String date2, @Param("member_idx") int member_idx);
}

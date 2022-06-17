package co.team.library.member.service;

import java.util.List;


import co.team.library.member.vo.MemberVO;



public interface MemberService {
	List<MemberVO> memberSelectList(); //전체리스트 (관리자 페이지)
	List<MemberVO> memberBlackSelectList(); //블랙전체리스트
	List<MemberVO> addBlackSelectList(); //블랙리스트 당할 목록
	MemberVO MemberSelect(MemberVO vo); // 한명조회 (마이페이지)
	int memberInsert(MemberVO vo); // 추가 (가입)
	int memberPwUpdate(MemberVO vo); // 변경 (마이페이지)
	int memberInfoUpdate(MemberVO vo); // 회원 정보 변경
	int memberUpdateBlack(MemberVO vo); // 블랙리스트 추가
	int memberUpdatenormal(MemberVO vo); // 블랙리스트를 정상으로
	int memberExit(MemberVO vo); // 정보삭제 (마이페이지)
	String findId(MemberVO vo); //아이디 찾기
	String findPw(MemberVO vo); //비번 찾기
	int join(MemberVO vo); // 회원가입
}

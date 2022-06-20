package co.team.library.member.service;

import java.util.List;

import co.team.library.member.vo.BoardPage;
import co.team.library.member.vo.MemberVO;

public interface MemberMapper {

	List<MemberVO> memberSelectList(BoardPage page); //전체리스트 (관리자 페이지)
	List<MemberVO> memberBlackSelectList(BoardPage page); //블랙전체리스트
	List<MemberVO> addBlackSelectList(BoardPage page); //블랙리스트 당할 목록
	MemberVO MemberSelect(MemberVO vo); // 한명조회 (마이페이지)
	MemberVO MemberChart(MemberVO vo); // 차트확인 sql
	int memberInsert(MemberVO vo); // 카카오 로그인
	int memberPwUpdate(MemberVO vo); // 변경 (마이페이지)
	int memberInfoUpdate(MemberVO vo); // 회원 정보 변경
	int memberExit(MemberVO vo); // 정보삭제 (마이페이지)
	int blackUpdate(MemberVO vo); // 블랙리스트 업데이트
	String selectAllId(String id); //아이디 중복확인
	List<MemberVO> findId(MemberVO vo); //아이디 찾기
	String findPw(MemberVO vo); //비번 찾기
	int join(MemberVO vo); // 회원가입
	int boardListCount();
	int boardListCount1();
	int boardListCount2();

}

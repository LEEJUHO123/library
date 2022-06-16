package co.team.library.member.service;

import java.util.List;

import co.team.library.member.vo.BoardPage;
import co.team.library.member.vo.MemberVO;

public interface MemberService {
	List<MemberVO> memberSelectList(BoardPage page); //전체리스트 (관리자 페이지)
	List<MemberVO> memberBlackSelectList(BoardPage page); //블랙전체리스트
	List<MemberVO> addBlackSelectList(BoardPage page); //블랙리스트 당할 목록
	MemberVO MemberSelect(MemberVO vo); // 한명조회 (마이페이지)
	int memberInsert(MemberVO vo); // 추가 (가입)
	int memberUpdate(MemberVO vo); // 변경 (마이페이지)
	int blackUpdate(String id); // 블랙리스트 업데이트
	int memberDelete(MemberVO vo); // 정보삭제 (마이페이지)
	String findId(MemberVO vo); //아이디 찾기
	String findPw(MemberVO vo); //비번 찾기
	int join(MemberVO vo); // 회원가입
	int boardListCount();
	int boardListCount1();
	int boardListCount2();
}

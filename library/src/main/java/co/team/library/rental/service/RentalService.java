package co.team.library.rental.service;

import java.util.List;

import co.team.library.member.vo.BoardPage;
import co.team.library.rental.vo.RentalVO;

public interface RentalService {
	List<RentalVO> allMemberRentalList(); // 전체회원 대출정보
	List<RentalVO> memberRentalList(BoardPage page); // 전체회원 대출정보
	List<RentalVO> myRentalList(String id); // 현재회원 대출정보
	List<RentalVO>  nowRentalList(String id); //현재회원이 지금 대출중인 책만 조회
	int boardListCount3();
	
	
}

package co.team.library.rental.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.team.library.comm.DataSource;
import co.team.library.member.vo.BoardPage;
import co.team.library.rental.service.RentalMapper;
import co.team.library.rental.service.RentalService;
import co.team.library.rental.vo.RentalVO;

public class RentalServiceImpl implements RentalService{
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private RentalMapper map = sqlSession.getMapper(RentalMapper.class);

	@Override
	public List<RentalVO> allMemberRentalList() {
		return map.allMemberRentalList();
	}

	@Override
	public List<RentalVO> myRentalList(String id) {
		return map.myRentalList(id);
	}

	@Override
	public List<RentalVO> nowRentalList(String id) {
		return map.nowRentalList(id);
	}

	@Override
	public List<RentalVO> memberRentalList(BoardPage page) {
		return map.memberRentalList(page);
	}

	@Override
	public int boardListCount3() {
		return map.boardListCount3();
	}
	

	@Override
	public int rentalBook(RentalVO vo) {
		return map.rentalBook(vo);
	}

	@Override
	public List<RentalVO> bestseller() {
		return map.bestseller();
	}


}

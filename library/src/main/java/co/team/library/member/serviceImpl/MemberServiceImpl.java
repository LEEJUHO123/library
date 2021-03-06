package co.team.library.member.serviceImpl;

import java.util.List;


import org.apache.ibatis.session.SqlSession;

import co.team.library.comm.DataSource;
import co.team.library.member.service.MemberMapper;
import co.team.library.member.service.MemberService;
import co.team.library.member.vo.MemberVO;

public class MemberServiceImpl implements MemberService{
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private MemberMapper map = sqlSession.getMapper(MemberMapper.class);
	
	
	@Override
	public List<MemberVO> memberSelectList() {
		return map.memberSelectList();
	}

	@Override
	public MemberVO MemberSelect(MemberVO vo) {
		return map.MemberSelect(vo);
	}

	@Override
	public int memberInsert(MemberVO vo) {
		return map.memberInsert(vo);
	}

	@Override
	public int memberPwUpdate(MemberVO vo) {
		return map.memberPwUpdate(vo);
	}


	@Override
	public String findId(MemberVO vo) {
		System.out.println(vo.toString());
		System.out.println(map.findId(vo));
		return map.findId(vo);
	}

	@Override
	public String findPw(MemberVO vo) {
		return map.findPw(vo);
	}

	@Override
	public int join(MemberVO vo) {
		return map.join(vo);
	}

	@Override
	public List<MemberVO> memberBlackSelectList() {
		return map.memberBlackSelectList();
	}
	@Override
	public int memberUpdateBlack(MemberVO vo) {
		return map.memberUpdateBlack(vo);
	}

	@Override
	public int memberUpdatenormal(MemberVO vo) {
		return map.memberUpdatenormal(vo);
	}

	@Override
	public String selectAllId(String id) {
		return map.selectAllId(id);
	}

	@Override
	public int memberInfoUpdate(MemberVO vo) {
		return map.memberInfoUpdate(vo);
	}

	@Override
	public int memberExit(MemberVO vo) {
		return map.memberExit(vo);
	}


	
}

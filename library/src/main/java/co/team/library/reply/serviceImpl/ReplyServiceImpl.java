package co.team.library.reply.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.team.library.comm.DataSource;
import co.team.library.reply.service.ReplyMapper;
import co.team.library.reply.service.ReplyService;
import co.team.library.reply.vo.ReplyVO;

public class ReplyServiceImpl implements ReplyService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ReplyMapper map = sqlSession.getMapper(ReplyMapper.class);
	
	@Override
	public ReplyVO replyList(ReplyVO vo) {
		return map.replyList(vo);
	}

	@Override
	public int replyInsert(ReplyVO vo) {
		return map.replyInsert(vo);
	}

	@Override
	public int replyUpdate(ReplyVO vo) {
		return map.replyUpdate(vo);
	}

	@Override
	public int replyDelete(ReplyVO vo) {
		return map.replyDelete(vo);
	}

}

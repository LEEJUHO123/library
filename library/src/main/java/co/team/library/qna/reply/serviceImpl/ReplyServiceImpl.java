package co.team.library.qna.reply.serviceImpl;

import org.apache.ibatis.session.SqlSession;

import co.team.library.comm.DataSource;
import co.team.library.qna.reply.service.ReplyMapper;
import co.team.library.qna.reply.service.ReplyService;
import co.team.library.qna.reply.vo.ReplyVO;

public class ReplyServiceImpl implements ReplyService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ReplyMapper map = sqlSession.getMapper(ReplyMapper.class);
	
	@Override
	public int replyInsert(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.replyInsert(vo);
	}
	@Override
	public int replyUpdate(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.replyUpdate(vo);
	}
	@Override
	public int replyDelete(ReplyVO vo) {
		// TODO Auto-generated method stub
		return map.replyDelete(vo);
	}

}

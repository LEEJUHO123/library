package co.team.library.qna.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.team.library.comm.DataSource;
import co.team.library.qna.page.SectionPage;
import co.team.library.qna.service.QnaMapper;
import co.team.library.qna.service.QnaService;
import co.team.library.qnavo.QnaVO;


public class QnaServiceImpl implements QnaService{
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private QnaMapper map = sqlSession.getMapper(QnaMapper.class);
	
	@Override
	public List<QnaVO> qnaSelectList(SectionPage page) {
		
		return map.qnaSelectList(page);
	}

	@Override
	public List<QnaVO> qnaSearchList(String key, String val) {
		
		return map.qnaSearchList(key, val);
	}

	@Override
	public QnaVO qnaSelect(QnaVO vo) {
		
		return map.qnaSelect(vo);
	}

	@Override
	public int qnaInsert(QnaVO vo) {
		
		return map.qnaInsert(vo);
	}

	@Override
	public int qnaUpdate(QnaVO vo) {
		
		return map.qnaUpdate(vo);
	}

	@Override
	public int qnaDelete(QnaVO vo) {
		
		return map.qnaDelete(vo);
	}

	
	@Override
	public int boardListCount() {
		// TODO Auto-generated method stub
		return map.boardListCount();
	}

}

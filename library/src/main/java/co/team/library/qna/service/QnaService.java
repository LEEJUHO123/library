package co.team.library.qna.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.team.library.qna.page.QnaPage;
import co.team.library.qna.vo.QnaVO;
import co.team.library.reply.vo.ReplyVO;

public interface QnaService {
	List<QnaVO> qnaList(QnaPage page);
	List<QnaVO> qnaSearchList(@Param("key") String key, @Param("val") String val);
	QnaVO qnaSelect(QnaVO vo);
	QnaVO qnaDetail(QnaVO vo);
	int qnaInsert(QnaVO vo);
	int qnaUpdate(QnaVO vo);
	int qnaDelete(QnaVO vo);
	int qnaListCount(QnaPage page);
	List<ReplyVO> replyList(ReplyVO vo);
}

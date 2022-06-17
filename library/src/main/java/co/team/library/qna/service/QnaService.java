package co.team.library.qna.service;

import java.util.List;

import co.team.library.qna.page.SectionPage;
import co.team.library.qnavo.QnaVO;

public interface QnaService {
	List<QnaVO> qnaSelectList(SectionPage page);
	List<QnaVO> qnaSearchList(String key, String val);
	QnaVO qnaSelect(QnaVO vo);
	int qnaInsert(QnaVO vo);
	int qnaUpdate(QnaVO vo);
	int qnaDelete(QnaVO vo);
	int boardListCount();
}

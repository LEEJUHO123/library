package co.team.library.qna.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.team.library.qna.page.SectionPage;
import co.team.library.qnavo.QnaVO;

public interface QnaMapper {
	List<QnaVO> qnaSelectList(SectionPage page);
	List<QnaVO> qnaSearchList(@Param("key") String key, @Param("val") String val); 
	QnaVO qnaSelect(QnaVO vo);
	int qnaInsert(QnaVO vo);
	int qnaUpdate(QnaVO vo);
	int qnaDelete(QnaVO vo);
	int boardListCount();

}

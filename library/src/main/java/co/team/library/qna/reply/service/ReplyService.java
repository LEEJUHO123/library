package co.team.library.qna.reply.service;

import java.util.List;

import co.team.library.qna.reply.vo.ReplyVO;

public interface ReplyService {
	List<ReplyVO> replySelectList();
	List<ReplyVO> replySearchList(String key, String val);
	ReplyVO replySelect(ReplyVO vo);
	int replyInsert(ReplyVO vo);
	int replyUpdate(ReplyVO vo);
	int replyDelete(ReplyVO vo);
}

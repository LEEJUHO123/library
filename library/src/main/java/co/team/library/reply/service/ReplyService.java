package co.team.library.reply.service;

import java.util.List;

import co.team.library.reply.vo.ReplyVO;

public interface ReplyService {
	ReplyVO replyList(ReplyVO vo);
	int replyInsert(ReplyVO vo);
	int replyUpdate(ReplyVO vo);
	int replyDelete(ReplyVO vo);
}

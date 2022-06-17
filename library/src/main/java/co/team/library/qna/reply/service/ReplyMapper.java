package co.team.library.qna.reply.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import co.team.library.qna.reply.vo.ReplyVO;

public interface ReplyMapper {
	List<ReplyVO> replySelectList();
	List<ReplyVO> replySearchList(@Param("key") String key, @Param("val") String val); 
	ReplyVO replySelect(ReplyVO vo);
	int replyInsert(ReplyVO vo);
	int replyUpdate(ReplyVO vo);
	int replyDelete(ReplyVO vo);
}

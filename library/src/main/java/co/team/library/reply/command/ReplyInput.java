package co.team.library.reply.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.reply.service.ReplyService;
import co.team.library.reply.serviceImpl.ReplyServiceImpl;
import co.team.library.reply.vo.ReplyVO;

public class ReplyInput implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReplyService dao = new ReplyServiceImpl();
		ReplyVO vo = new ReplyVO();
		vo.setBoardNumber(Integer.parseInt(request.getParameter("boardNumber")));
		vo.setReplyContent(request.getParameter("replyContent"));
		vo.setRdate(Date.valueOf(request.getParameter("rdate")));
		
		dao.replyInsert(vo);
		return "qnaDetail.do";
	}

}

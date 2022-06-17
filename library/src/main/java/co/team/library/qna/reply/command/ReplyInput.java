package co.team.library.qna.reply.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.qna.reply.service.ReplyService;
import co.team.library.qna.reply.serviceImpl.ReplyServiceImpl;
import co.team.library.qna.reply.vo.ReplyVO;

public class ReplyInput implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReplyService dao = new ReplyServiceImpl();
		ReplyVO vo = new ReplyVO();
			vo.setId(request.getParameter("id"));
			vo.setContent(request.getParameter("content"));
			vo.setWdate(Date.valueOf(request.getParameter("wdate")));	
		return "qna/qnaSelect";
	}

}

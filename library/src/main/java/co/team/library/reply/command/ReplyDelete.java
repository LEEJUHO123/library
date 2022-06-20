package co.team.library.reply.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.reply.service.ReplyService;
import co.team.library.reply.serviceImpl.ReplyServiceImpl;
import co.team.library.reply.vo.ReplyVO;

public class ReplyDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReplyService dao = new ReplyServiceImpl();
		ReplyVO vo = new ReplyVO();
		
		vo.setReplyNumber(Integer.parseInt(request.getParameter("replyNumber")));
		int n = dao.replyDelete(vo);
		
		return "qnaDetail.do";
	}

}

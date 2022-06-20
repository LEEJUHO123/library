package co.team.library.qna.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.qna.service.QnaService;
import co.team.library.qna.serviceImpl.QnaServiceImpl;
import co.team.library.qna.vo.QnaVO;
import co.team.library.reply.service.ReplyService;
import co.team.library.reply.serviceImpl.ReplyServiceImpl;
import co.team.library.reply.vo.ReplyVO;

public class QnaDetail implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		QnaService dao = new QnaServiceImpl();
		QnaVO vo = new QnaVO();
		vo.setBoardNumber(Integer.parseInt(request.getParameter("boardNumber")));
		vo = dao.qnaDetail(vo);
		request.setAttribute("qna", vo);
		
		ReplyVO vo2 = new ReplyVO();
		List<ReplyVO> vo3 = new ArrayList<ReplyVO>();
		vo2.setBoardNumber(Integer.parseInt(request.getParameter("boardNumber")));
		vo3 = dao.replyList(vo2);
		request.setAttribute("reply", vo3);
	
		return "qna/qnaDetail";
	}

}

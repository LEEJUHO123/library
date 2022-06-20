package co.team.library.reply.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.qna.page.QnaPage;
import co.team.library.reply.service.ReplyService;
import co.team.library.reply.serviceImpl.ReplyServiceImpl;
import co.team.library.reply.vo.ReplyVO;

public class ReplyList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("시작");
		ReplyService reply = new ReplyServiceImpl();
		ReplyVO vo2 = new ReplyVO();
		System.out.println(Integer.parseInt(request.getParameter("boardNumber")));
		vo2.setBoardNumber(Integer.parseInt(request.getParameter("boardNumber")));
		System.out.println(vo2.getBoardNumber());
		vo2 = reply.replyList(vo2);
		System.out.println(vo2);
		System.out.println("종료");
		request.setAttribute("reply", vo2);
		
		return "qna/qnaDetail";
	}

}

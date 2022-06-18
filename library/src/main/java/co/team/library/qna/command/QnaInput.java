package co.team.library.qna.command;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.qna.service.QnaService;
import co.team.library.qna.serviceImpl.QnaServiceImpl;
import co.team.library.qnavo.QnaVO;

public class QnaInput implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		QnaService dao = new QnaServiceImpl();
		QnaVO vo = new QnaVO();
			vo.setId(request.getParameter("id"));
			vo.setTitle(request.getParameter("title"));
			vo.setContent(request.getParameter("content"));
			vo.setWdate(Date.valueOf(request.getParameter("wdate")));
		int n = dao.qnaInsert(vo);
		return "home/home";
	}
}

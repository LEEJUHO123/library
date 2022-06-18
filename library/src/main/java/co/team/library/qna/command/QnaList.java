package co.team.library.qna.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.qna.service.QnaService;
import co.team.library.qna.serviceImpl.QnaServiceImpl;
import co.team.library.qnavo.QnaVO;

public class QnaList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		QnaService dao = new QnaServiceImpl();
		List<QnaVO> list = new ArrayList<QnaVO>();
		list = dao.qnaSelectList();
		request.setAttribute("list", list);
		return "qna/qnaList";
	}
	
}

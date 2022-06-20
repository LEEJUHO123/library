package co.team.library.qna.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.qna.service.QnaService;
import co.team.library.qna.serviceImpl.QnaServiceImpl;
import co.team.library.qna.vo.QnaVO;

public class QnaDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		QnaService dao = new QnaServiceImpl();
		QnaVO vo = new QnaVO();
		
		vo.setBoardNumber(Integer.parseInt(request.getParameter("boardNumber")));
		int n = dao.qnaDelete(vo);
		
		return "qnaList.do";
	}

}

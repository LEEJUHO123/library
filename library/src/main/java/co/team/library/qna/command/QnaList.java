package co.team.library.qna.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.qna.page.QnaPage;
import co.team.library.qna.service.QnaService;
import co.team.library.qna.serviceImpl.QnaServiceImpl;
import co.team.library.qna.vo.QnaVO;

public class QnaList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		QnaService dao = new QnaServiceImpl();
		List<QnaVO> list = new ArrayList<QnaVO>();
		String nowPage = request.getParameter("nowPage");
		String cntPerPage = request.getParameter("cntPerPage");

		QnaPage page = new QnaPage();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "10";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "10";
		}

		int totalCount = dao.qnaListCount(page);
		page = new QnaPage(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		list = dao.qnaList(page);
		
		request.setAttribute("paging", page);
		request.setAttribute("list", list);
		return "qna/qnaList";
	}

}

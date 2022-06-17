package co.team.library.qna.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.qna.page.SectionPage;
import co.team.library.qna.service.QnaService;
import co.team.library.qna.serviceImpl.QnaServiceImpl;
import co.team.library.qnavo.QnaVO;

public class QnaList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		QnaService dao = new QnaServiceImpl();
		List<QnaVO> list = new ArrayList<QnaVO>();
		String nowPage = request.getParameter("nowPage");
		String cntPerPage = request.getParameter("cntPerPage");

		SectionPage page = new SectionPage();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) {
			cntPerPage = "5";
		}

		int totalCount = dao.boardListCount();
		page = new SectionPage(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		list = dao.qnaSelectList(page);
		
		request.setAttribute("paging", page);
		request.setAttribute("list", list);
		
		return "qna/qnaList";
	}

}

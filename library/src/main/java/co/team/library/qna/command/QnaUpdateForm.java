package co.team.library.qna.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;

public class QnaUpdateForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("boardNumber", request.getParameter("boardNumber"));
		return "qna/qnaUpdateForm";
	}

}

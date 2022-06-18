package co.team.library.qna.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;

public class QnaInputForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "qna/qnaInputForm";
	}

}

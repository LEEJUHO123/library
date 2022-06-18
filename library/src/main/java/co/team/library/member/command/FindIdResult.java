package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;

public class FindIdResult implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "member/findIdResult";
	}

}

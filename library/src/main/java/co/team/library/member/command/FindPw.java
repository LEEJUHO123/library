package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;

public class FindPw implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "member/findPw";
	}

}

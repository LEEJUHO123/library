package co.team.library.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;

public class NowRentalListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		return "mypage/nowRentalList";
	}

}

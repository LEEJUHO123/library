package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.team.library.comm.Command;

public class CheckPwForMyInfo implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		String password = request.getParameter("pswd");
		String sessionPassword = (String) session.getAttribute("password");
		if (password.equals(sessionPassword)) {
			return "ajax:" + 1;
		}else {
			return "ajax:" + 2;			
		}
	}

}

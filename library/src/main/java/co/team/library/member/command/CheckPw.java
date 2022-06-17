package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.team.library.comm.Command;
import co.team.library.member.service.MemberService;
import co.team.library.member.serviceImpl.MemberServiceImpl;
import co.team.library.member.vo.MemberVO;

public class CheckPw implements Command {

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

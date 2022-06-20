package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.team.library.comm.Command;
import co.team.library.member.service.MemberService;
import co.team.library.member.serviceImpl.MemberServiceImpl;
import co.team.library.member.vo.MemberVO;

public class CheckMemberExit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		HttpSession session = request.getSession();
		MemberVO member = new MemberVO();
		int result = -1;
		String password = request.getParameter("pswd");
		String sessionPassword = (String) session.getAttribute("password");
		if (password.equals(sessionPassword)) {
			member.setId((String) session.getAttribute("id"));
			result = dao.memberExit(member);
			if(result == 1) {
				session.invalidate();
				return "ajax:" + 1;
			}else {
				return "ajax:" + 2;
			}
		}else {
			return "ajax:" +3;			
		}
	}

}

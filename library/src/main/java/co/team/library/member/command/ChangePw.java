package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.team.library.comm.Command;
import co.team.library.member.service.MemberService;
import co.team.library.member.serviceImpl.MemberServiceImpl;
import co.team.library.member.vo.MemberVO;

public class ChangePw implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		MemberVO member = new MemberVO();
		HttpSession session = request.getSession();
		String password = request.getParameter("pswd");
		String id = (String) session.getAttribute("id");
		System.out.println(password+ " " + id);
		int result = dao.memberPwUpdate(member);
		if (result == 1) {
			return "ajax:" + 1;
		}else {
			return "ajax:" + 0;
		}
	}

}

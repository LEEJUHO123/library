package co.team.library.mypage.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.team.library.comm.Command;
import co.team.library.member.service.MemberService;
import co.team.library.member.serviceImpl.MemberServiceImpl;
import co.team.library.member.vo.MemberVO;

public class InfoMessage implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		HttpSession session = request.getSession();
		MemberVO member = new MemberVO();
		String pswd = request.getParameter("pswd");
		String pswdCheck = request.getParameter("pswdCheck");
		if (pswd.equals(pswdCheck)) {
			
		}
		return "mypage/infoMessage";
	}

}

package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.team.library.comm.Command;
import co.team.library.member.service.MemberService;
import co.team.library.member.serviceImpl.MemberServiceImpl;
import co.team.library.member.vo.MemberVO;

public class ChangePwForm implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		HttpSession session = request.getSession();
		MemberVO member = new MemberVO();
		String password = request.getParameter("pswd");
		String sessionPassword = (String) session.getAttribute("password");
		System.out.println(password +  " " + sessionPassword);
		if (password != null & password.equals(sessionPassword)) {
			return "mypage/changePwForm";
		}else {
			request.setAttribute("message", "비밀번호가 맞지 않습니다.");
			return "mypage/infoMessage";			
		}
	}

}

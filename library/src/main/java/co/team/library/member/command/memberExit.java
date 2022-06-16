package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.team.library.comm.Command;
import co.team.library.member.service.MemberService;
import co.team.library.member.serviceImpl.MemberServiceImpl;
import co.team.library.member.vo.MemberVO;

public class memberExit implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		HttpSession session = request.getSession();
		MemberVO member = new MemberVO();
		int result = -1;
		String password = request.getParameter("pswd");
		String sessionPassword = (String) session.getAttribute("password");
		if (password != null && password.equals(sessionPassword)) {
			member.setId((String) session.getAttribute("id"));
			result = dao.memberExit(member);
			if(result == 1) {
				request.setAttribute("message", "정상적으로 탈퇴되었습니다.");
				session.invalidate();
			}else {
				request.setAttribute("message", "알 수 없는 오류로 인해 처리되지 않았습니다.\n 다시 시도해주세요.");
			}
			
		}else {
			request.setAttribute("message", "비밀번호가 맞지 않습니다.");
		}
		return "mypage/memberExit";
	}

}

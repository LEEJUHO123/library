package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.member.service.MemberService;
import co.team.library.member.serviceImpl.MemberServiceImpl;
import co.team.library.member.vo.MemberVO;

public class Run implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
			
		String id = request.getParameter("blackId"); // jsp에서 blackId값을 받아옴
		vo.setId(id);
		int result = dao.blackUpdate(vo);
		System.out.println(result);
		if(result == 1) {
			return "ajax:" + 1;
		}else {
			return "ajax:" + 2;	
		}

	}
}
package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.member.service.MemberService;
import co.team.library.member.serviceImpl.MemberServiceImpl;


public class SelectAllId implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService service = new MemberServiceImpl();
		String id = request.getParameter("id");
		String result = service.selectAllId(id);
		
		System.out.println(id);
		if(result == null) {
			return "ajax:" + 1;
		}else {
			return "ajax:" + 2;	
		}
		
	}

}

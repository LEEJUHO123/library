package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.team.library.comm.Command;
import co.team.library.member.service.MemberService;
import co.team.library.member.serviceImpl.MemberServiceImpl;
import co.team.library.member.vo.MemberVO;

public class SnsLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		HttpSession session = request.getSession();
		
		String kakao = request.getParameter("kakao");
		
		
		MemberVO vo = new MemberVO();
		vo.setId(kakao);
		
		
		vo = dao.MemberSelect(vo);
		
		System.out.println(vo);
		
		if(vo != null) {
			
			session.setAttribute("id", vo.getId());
			session.setAttribute("name", vo.getName());
			return "ajax:" + 1 ;
		} else if(vo ==null){
			
		}				
		return "ajax:" + 2;	
		
	}

}

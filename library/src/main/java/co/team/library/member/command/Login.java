package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.team.library.comm.Command;
import co.team.library.member.service.MemberService;
import co.team.library.member.serviceImpl.MemberServiceImpl;
import co.team.library.member.vo.MemberVO;

public class Login implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		HttpSession session = request.getSession();
		MemberVO vo = new MemberVO();
		vo.setId(request.getParameter("id"));
		vo.setPassword(request.getParameter("password"));
		vo.setName(request.getParameter("name"));
		vo.setTel(request.getParameter("tel"));
		vo.setAddress(request.getParameter("address"));
		vo.setPostCode(request.getParameter("postCode"));
		vo = dao.MemberSelect(vo);
		
		
		if(vo != null) {
			session.setAttribute("id", vo.getId());
			session.setAttribute("password", vo.getPassword());
			session.setAttribute("name", vo.getName());
			session.setAttribute("tel", vo.getTel());
			session.setAttribute("address", vo.getAddress());
			session.setAttribute("postCode", vo.getPostCode());
			return "home/home";
		}else {
			
		}
		
		
		
		return "member/login";
	}

}

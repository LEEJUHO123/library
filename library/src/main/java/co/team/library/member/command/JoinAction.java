package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.team.library.comm.Command;

public class JoinAction implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	HttpSession session = request.getSession();
	
	
	
		return "member/joinAction";
	}
}
		
	
////		request.setCharacterEncoding("UTF-8");
//		String id = request.getParameter("id");
//	    String password = request.getParameter("password");
//	    String name = request.getParameter("name");
//	    String tel = request.getParameter("tel");
//	    String address = request.getParameter("address");
//		  
//	    MemberVO vo = new MemberVO();
//		    vo.setId(id);
//		    vo.setPassword(password);
//		    vo.setName(name);
//		    vo.setTel(tel);
//		    vo.setAddress(address);
//			MemberService dao = new MemberServiceImpl();
//			int joinAccount = dao.join(vo);
			
			
			
			
		


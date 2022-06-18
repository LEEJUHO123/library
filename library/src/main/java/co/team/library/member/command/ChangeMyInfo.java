package co.team.library.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.team.library.comm.Command;
import co.team.library.member.service.MemberService;
import co.team.library.member.serviceImpl.MemberServiceImpl;
import co.team.library.member.vo.MemberVO;

public class ChangeMyInfo implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
	    String tel = request.getParameter("tel");
	    String address = request.getParameter("roadAddress")+" "
	    				+ request.getParameter("jibunAddress")+ " "
	    				+ request.getParameter("detailAddress");
	    String postCode = request.getParameter("postCode");
	    
	    vo.setId(id);
	    vo.setTel(tel);
	    vo.setAddress(address);
	    vo.setPostCode(postCode);
	    
	    int result = dao.memberInfoUpdate(vo);
	    if (result == 1) {
	    	session.setAttribute("tel", tel);
	    	session.setAttribute("address", address);
	    	session.setAttribute("postCode", postCode);
	    	return "ajax:" + 1;
	    }else {
	    	return "ajax:" + 2;	
	    }
	}

}

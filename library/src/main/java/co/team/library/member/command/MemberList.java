package co.team.library.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.member.vo.MemberVO;

public class MemberList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 회원목록 리스트 확인
		MemeberService dao = new MemeberServiceImpl();
		List<MemberVO> members = new ArrayList<MemberVO>();
		members = dao.memberSelectList();
		
		if(members.getblack == 1) {
			System.out.println("정상");
		} else {
			System.out.println("블랙");
		}
		request.setAttribute("members", members);
		return "administrator/memberList";
	}

}

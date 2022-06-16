package co.team.library.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.member.service.MemberService;
import co.team.library.member.serviceImpl.MemberServiceImpl;
import co.team.library.member.vo.BoardPage;
import co.team.library.member.vo.MemberVO;

public class AddBlacklist implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 블랙리스트 추가
		MemberService dao = new MemberServiceImpl();
		
		String nowPage = request.getParameter("nowPage");
		String cntPerPage = request.getParameter("cntPerPage");
		
		BoardPage page = new BoardPage();
		if (nowPage == null && cntPerPage == null) {
			nowPage = "1";
			cntPerPage = "5";
		} else if (nowPage == null) {
			nowPage = "1";
		} else if (cntPerPage == null) { 
			cntPerPage = "5";
		}
		
		int totalCount = dao.boardListCount2();
		page = new BoardPage(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		List<MemberVO> members = new ArrayList<MemberVO>();
		
		members = dao.addBlackSelectList(page);
		request.setAttribute("paging", page);
		request.setAttribute("members", members);
		
		List<MemberVO> list = new ArrayList<>();
		for(MemberVO vo : list) {
			dao.blackUpdate(vo);
		}
		return "administrator/addBlacklist";
	}

}

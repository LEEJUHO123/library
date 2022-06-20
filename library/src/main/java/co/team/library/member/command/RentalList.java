package co.team.library.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.member.vo.BoardPage;
import co.team.library.rental.service.RentalService;
import co.team.library.rental.serviceImpl.RentalServiceImpl;
import co.team.library.rental.vo.RentalVO;

public class RentalList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 대여목록
		RentalService dao = new RentalServiceImpl();
		
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
		
		int totalCount = dao.boardListCount3();
		page = new BoardPage(totalCount, Integer.parseInt(nowPage), Integer.parseInt(cntPerPage));
		
		List<RentalVO> members = new ArrayList<RentalVO>();
		
		members = dao.memberRentalList(page);
		request.setAttribute("paging", page);
		request.setAttribute("members", members);
		return "administrator/rentalList";
	}

}

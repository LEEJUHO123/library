package co.team.library.mypage.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.team.library.comm.Command;
import co.team.library.rental.service.RentalService;
import co.team.library.rental.serviceImpl.RentalServiceImpl;
import co.team.library.rental.vo.RentalVO;

public class MyRentalListCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		RentalService dao = new RentalServiceImpl();
		List<RentalVO> rentalList = new ArrayList<RentalVO>();
		HttpSession session = request.getSession();
		rentalList = dao.myRentalList((String) session.getAttribute("id"));
		request.setAttribute("rentalList", rentalList);
		return "mypage/myRentalList";
	}

}

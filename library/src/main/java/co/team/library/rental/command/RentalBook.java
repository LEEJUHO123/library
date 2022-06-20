package co.team.library.rental.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.team.library.comm.Command;
import co.team.library.rental.service.RentalService;
import co.team.library.rental.serviceImpl.RentalServiceImpl;
import co.team.library.rental.vo.RentalVO;

public class RentalBook implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		RentalService dao = new RentalServiceImpl();
		HttpSession Session = request.getSession();
		String user = (String)Session.getAttribute("id");
		String bookCode = request.getParameter("bookCode");
		
		RentalVO vo = new RentalVO();			
			vo.setId(user);
			vo.setBookCode(bookCode);		
			
		int r = dao.rentalBook(vo);
				
		if (r == 1)  {
			return "ajax:" +1;
		} else {
			return "ajax:" +2;
		}
				
	}

}

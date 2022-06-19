package co.team.library.books;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.book.service.BookService;
import co.team.library.book.serviceImpl.BookServiceImpl;
import co.team.library.book.vo.BookVO;
import co.team.library.comm.Command;

public class BookDetailsCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
	BookService dao = new BookServiceImpl();	
	BookVO vo = new BookVO();
	String title = request.getParameter("title");
	System.out.println(title);
	String result = dao.bookDetail(title);
	
	vo.setBookTitle(title);	
			
	if(result == null) {
		return "ajax:" + 1;
	}else {
		return "ajax:" + 2;
	}
	
	
	}

}
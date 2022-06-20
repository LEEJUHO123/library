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
		vo = dao.bookDetail(title);

		request.setAttribute("book", vo);
					
		return "books/bookDetails";
				
	}

}
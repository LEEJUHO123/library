package co.team.library.books;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.book.service.BookService;
import co.team.library.book.serviceImpl.BookServiceImpl;
import co.team.library.book.vo.BookVO;
import co.team.library.comm.Command;

public class Books implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		//책 리스트
		BookService dao = new BookServiceImpl();
		List<BookVO> books = new ArrayList<BookVO>();
		books = dao.bookList();		
		request.setAttribute("books", books);
		return "books/books";
	}

}

package co.team.library.book.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.book.service.BookService;
import co.team.library.book.serviceImpl.BookServiceImpl;
import co.team.library.book.vo.BookVO;
import co.team.library.comm.Command;

public class BookCategoryList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BookService dao = new BookServiceImpl();
		List<BookVO> list = new ArrayList();
		BookVO vo = new BookVO();
		String category = (String) request.getParameter("category");
		vo.setCategory(category);
		list = dao.searchBookCategory(vo);
		request.setAttribute("books", list);
		return "books/books";
	}

}

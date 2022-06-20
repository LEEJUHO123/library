package co.team.library.book.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.team.library.book.service.BookService;
import co.team.library.book.serviceImpl.BookServiceImpl;
import co.team.library.book.vo.BookVO;
import co.team.library.comm.Command;

public class BookSearch implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BookService dao = new BookServiceImpl();
		List<BookVO> list = new ArrayList();
		BookVO vo = new BookVO();
		
		String key = (String) request.getParameter("key");
		String keyword = (String) request.getParameter("keyword");
		switch(key) {
		case "allList" :
			vo.setBookTitle(keyword);
			vo.setWriter(keyword);
			list = dao.searchKeyword(vo);
			break;
		case "title" :
			vo.setBookTitle(keyword);
			list = dao.searchTitle(vo);
			break;
		case "writer" :
			vo.setWriter(keyword);
			list = dao.searchBookWriter(vo);
			break;
		}
			request.setAttribute("books", list);
			return "books/books";
	}

}

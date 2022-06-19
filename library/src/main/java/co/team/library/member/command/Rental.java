package co.team.library.member.command;

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

public class Rental implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		System.out.println(request);
		BookService dao = new BookServiceImpl();
		List<BookVO> list = new ArrayList<BookVO>();
		ObjectMapper mapper = new ObjectMapper();
		
		String jsonData="";
		list = dao.rentalChart();
		System.out.println(list);

		return "ajax:" + list;
	}
}
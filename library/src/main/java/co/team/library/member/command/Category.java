package co.team.library.member.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

import co.team.library.book.service.BookService;
import co.team.library.book.serviceImpl.BookServiceImpl;
import co.team.library.book.vo.BookVO;
import co.team.library.comm.Command;

public class Category implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		BookService dao = new BookServiceImpl();
		List<BookVO> list = new ArrayList<BookVO>();
		list = dao.categoryChart();
		Gson gson = new GsonBuilder().create();
        String json = gson.toJson(list);

		return "ajax:" + json;
	}
}

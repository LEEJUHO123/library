package co.team.library.books;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;

public class BooksCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "books/books";
	}

}

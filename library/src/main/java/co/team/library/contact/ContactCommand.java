package co.team.library.contact;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;

public class ContactCommand implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		return "contact/contact";
	}

}

package co.team.library.member.command;

import java.util.Map;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.comm.Command;
import co.team.library.member.service.MemberService;

public class CategoryChart implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 도넛차트

		return "administrator/categoryChart";
	}

}

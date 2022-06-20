package co.team.library.qna.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.team.library.comm.Command;
import co.team.library.qna.service.QnaService;
import co.team.library.qna.serviceImpl.QnaServiceImpl;
import co.team.library.qna.vo.QnaVO;

public class AjaxSearchList implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		QnaService dao = new QnaServiceImpl();
		List<QnaVO> list = new ArrayList<QnaVO>();
		ObjectMapper mapper = new ObjectMapper(); //json string으로 만들기
		String key = request.getParameter("key");
		String val = request.getParameter("val");
		list = dao.qnaSearchList(key, val);
		String jsonData = "";
		try {
			jsonData = mapper.writeValueAsString(list); //리스트를 json string으로
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return "ajax:" + jsonData;
	}

}

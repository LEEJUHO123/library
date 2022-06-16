package co.team.library.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.team.library.books.BookCartCommand;
import co.team.library.books.BookDetailsCommand;
import co.team.library.books.BooksCommand;
import co.team.library.books.RentalBookCommand;
import co.team.library.comm.Command;
import co.team.library.contact.ContactCommand;
import co.team.library.home.HomeCommand;

import co.team.library.member.command.AddBlacklist;
import co.team.library.member.command.Blacklist;
import co.team.library.member.command.FindId;
import co.team.library.member.command.FindIdResult;
import co.team.library.member.command.FindPw;
import co.team.library.member.command.FindPwResult;
import co.team.library.member.command.Login;
import co.team.library.member.command.LoginForm;
import co.team.library.member.command.Logout;
import co.team.library.member.command.CheckMemberExit;
import co.team.library.member.command.CheckPwForm;
import co.team.library.member.command.MemberList;
import co.team.library.member.command.RentalChart;
import co.team.library.member.command.ChangePwForm;
import co.team.library.member.command.memberExit;
import co.team.library.mypage.command.MyInfoCommand;
import co.team.library.mypage.command.MyRentalListCommand;
import co.team.library.mypage.command.MypageHomeCommand;
import co.team.library.mypage.command.NowRentalListCommand;
import co.team.library.qna.command.AjaxSearchList;
import co.team.library.qna.command.QnaInput;
import co.team.library.qna.command.QnaInputForm;
import co.team.library.qna.command.QnaList;
import co.team.library.qna.command.QnaSelect;


@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//Command를 import시킬때는 내가 만든 서블릿으로 import 시킬것
	private HashMap<String, Command> map = new HashMap<String, Command>();
    

    public FrontController() {
        super();
    }

    
	 //요청과 처리 명령어를 연결하는 부분
	public void init(ServletConfig config) throws ServletException { 
		map.put("/home.do", new HomeCommand());		
		map.put("/contact.do", new ContactCommand());
		map.put("/books.do", new BooksCommand());
		map.put("/bookDetails.do", new BookDetailsCommand());
		map.put("/bookCart.do", new BookCartCommand());
		map.put("/rentalBook.do", new RentalBookCommand());
		
		//QnA
		map.put("/qnaInputForm.do", new QnaInputForm());
		map.put("/qnaInput.do", new QnaInput());
		map.put("/qnaList.do", new QnaList());
		map.put("/qnaSelect.do", new QnaSelect());
		map.put("/ajaxSearchList.do", new AjaxSearchList());
		
		
		/*
		 * map.put("/mypageHome.do", new MypageHomeCommand()); map.put("/myInfo.do", new
		 * MyInfoCommand()); map.put("/nowRentalList.do", new NowRentalListCommand());
		 * map.put("/myRentalList.do", new MyRentalListCommand());
		 */
		
		//로그인
		map.put("/login.do", new Login());
		map.put("/loginForm.do", new LoginForm());
		map.put("/logout.do", new Logout());
		map.put("/findId.do", new FindId());
		map.put("/findIdResult.do", new FindIdResult());
		map.put("/findPw.do", new FindPw());
		map.put("/findPwResult.do", new FindPwResult());
		
		
		  //관리자
		map.put("/addBlacklist.do", new AddBlacklist());
		 map.put("/blackList.do", new Blacklist()); 
//		/* map.put("/categoryChart.do" new CategoryChart()); */
		 map.put("/memberList.do", new MemberList());
		  map.put("/rentalChart.do", new RentalChart());
		 
		  //마이페이지
		  map.put("/mypageHome.do", new MypageHomeCommand());
		  map.put("/myInfo.do", new MyInfoCommand());
		  map.put("/checkPwForm.do", new CheckPwForm());
		  map.put("/changePwForm", new ChangePwForm());
		  map.put("/checkMemberExit.do", new CheckMemberExit());
		  map.put("/memberExit.do", new memberExit());
		  map.put("/nowRentalList.do", new NowRentalListCommand());
		  map.put("/myRentalList.do", new MyRentalListCommand());

	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 한글깨짐 방지
		String uri = request.getRequestURI(); // 요청 URI 구함
		String contextPath = request.getContextPath(); // 루트 디렉토리 정보
		String page = uri.substring(contextPath.length());; // contextPath.length()(<-이걸빼면) 이 다음부터는 들어가는게 페이지다. ,, 실제 요청 명령을 받음
		System.out.println(uri + " con:" + contextPath + " page:" + page);
		Command command = map.get(page); //맵에서 키를 던져주니 나한테 던져주는건 밸류(커맨드)를 돌아온다 즉 커맨드를 구한다
		System.out.println(command);
		String viewPage = command.exec(request, response); // exec를 찾을때 맨끝에 String이 붙어서 나오는데 돌려받는값이 스트링인걸 알수있다.
		if(!viewPage.endsWith(".do")) {			
			viewPage = viewPage + ".tiles";
		
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); // Dispatcher은 권한위임.
		dispatcher.forward(request, response);
	}
}

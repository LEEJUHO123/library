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
import co.team.library.member.command.Join;
import co.team.library.member.command.JoinAction;
import co.team.library.member.command.Login;
import co.team.library.member.command.LoginForm;
import co.team.library.member.command.Logout;
import co.team.library.member.command.CheckMemberExit;
import co.team.library.member.command.CheckPw;
import co.team.library.member.command.CheckPwForm;
import co.team.library.member.command.MemberList;
import co.team.library.member.command.RentalChart;
import co.team.library.member.command.ChangePw;
import co.team.library.member.command.ChangePwForm;
import co.team.library.member.command.MemberExit;
import co.team.library.mypage.command.InfoMessage;
import co.team.library.member.command.SelectAllId;
import co.team.library.member.command.SnsLogin;
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
	//Command??? import???????????? ?????? ?????? ??????????????? import ?????????
	private HashMap<String, Command> map = new HashMap<String, Command>();
    

    public FrontController() {
        super();
    }

    
	 //????????? ?????? ???????????? ???????????? ??????
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
		
		//?????????
		map.put("/login.do", new Login());
		map.put("/loginForm.do", new LoginForm());
		map.put("/logout.do", new Logout());
		map.put("/findId.do", new FindId());
		map.put("/findIdResult.do", new FindIdResult());
		map.put("/findPw.do", new FindPw());
		map.put("/findPwResult.do", new FindPwResult());
		map.put("/join.do", new Join());
		map.put("/joinAction.do", new JoinAction());
		map.put("/selectAllId.do", new SelectAllId());
		map.put("/snsLogin.do", new SnsLogin());
		
		
		
		  //?????????
		map.put("/addBlacklist.do", new AddBlacklist());
		 map.put("/blackList.do", new Blacklist()); 
//		/* map.put("/categoryChart.do" new CategoryChart()); */
		 map.put("/memberList.do", new MemberList());
		  map.put("/rentalChart.do", new RentalChart());
		 
		  //???????????????
		  map.put("/mypageHome.do", new MypageHomeCommand());
		  map.put("/myInfo.do", new MyInfoCommand());
		  map.put("/checkPwForm.do", new CheckPwForm());
		  map.put("/checkPw.do", new CheckPw());
		  map.put("/changePwForm.do", new ChangePwForm());
		  map.put("/changePw.do", new ChangePw());
		  map.put("/memberExit.do", new MemberExit());
		  map.put("/checkMemberExit.do", new CheckMemberExit());
		  map.put("/nowRentalList.do", new NowRentalListCommand());
		  map.put("/myRentalList.do", new MyRentalListCommand());
		  map.put("infoMessage.do", new InfoMessage());

	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // ???????????? ??????
		String uri = request.getRequestURI(); // ?????? URI ??????
		String contextPath = request.getContextPath(); // ?????? ???????????? ??????
		String page = uri.substring(contextPath.length());; // contextPath.length()(<-????????????) ??? ??????????????? ??????????????? ????????????. ,, ?????? ?????? ????????? ??????
		Command command = map.get(page); //????????? ?????? ???????????? ????????? ??????????????? ??????(?????????)??? ???????????? ??? ???????????? ?????????
		String viewPage = command.exec(request, response); // exec??? ????????? ????????? String??? ????????? ???????????? ?????????????????? ??????????????? ????????????.
		if(!viewPage.endsWith(".do")) {			
			if(viewPage.startsWith("ajax:")) {
				response.setContentType("text/html; charset=UTF-8");
				viewPage = viewPage.substring(5);
				response.getWriter().append(viewPage);
				return;
			}else {
				viewPage = viewPage + ".tiles";
			}

		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); // Dispatcher??? ????????????.
		dispatcher.forward(request, response);
	}
}

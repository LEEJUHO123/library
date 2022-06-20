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

import co.team.library.book.command.BookCategoryList;
import co.team.library.book.command.BookSearch;
import co.team.library.books.BookDetailsCommand;
import co.team.library.books.Books;
import co.team.library.comm.Command;
import co.team.library.contact.ContactCommand;
import co.team.library.home.HomeCommand;
import co.team.library.member.command.AddBlacklist;
import co.team.library.member.command.Admin;
import co.team.library.member.command.Blacklist;
import co.team.library.member.command.Category;
import co.team.library.member.command.CategoryChart;
import co.team.library.member.command.ChangeMyInfo;
import co.team.library.member.command.ChangeMyInfoForm;
import co.team.library.member.command.ChangePw;
import co.team.library.member.command.ChangePwForm;
import co.team.library.member.command.CheckMemberExit;
import co.team.library.member.command.CheckPw;
import co.team.library.member.command.CheckPwForMyInfo;
import co.team.library.member.command.CheckPwForm;
import co.team.library.member.command.CheckPwFormMyInfo;
import co.team.library.member.command.FindId;
import co.team.library.member.command.FindIdResult;
import co.team.library.member.command.FindPw;
import co.team.library.member.command.FindPwResult;
import co.team.library.member.command.Join;
import co.team.library.member.command.JoinAction;
import co.team.library.member.command.Login;
import co.team.library.member.command.LoginForm;
import co.team.library.member.command.Logout;
import co.team.library.member.command.MemberExit;
import co.team.library.member.command.MemberList;
import co.team.library.member.command.Rental;
import co.team.library.member.command.RentalChart;
import co.team.library.member.command.RentalList;
import co.team.library.member.command.Run;
import co.team.library.member.command.SelectAllId;
import co.team.library.member.command.SnsLogin;
import co.team.library.mypage.command.MyInfoCommand;
import co.team.library.mypage.command.MyRentalListCommand;
import co.team.library.mypage.command.MypageHomeCommand;
import co.team.library.mypage.command.NowRentalListCommand;
import co.team.library.qna.command.AjaxSearchList;
import co.team.library.qna.command.QnaDelete;
import co.team.library.qna.command.QnaDetail;
import co.team.library.qna.command.QnaInput;
import co.team.library.qna.command.QnaInputForm;
import co.team.library.qna.command.QnaList;
import co.team.library.qna.command.QnaUpdate;
import co.team.library.qna.command.QnaUpdateForm;
import co.team.library.rental.command.RentalBook;
import co.team.library.reply.command.ReplyInput;
import co.team.library.reply.command.ReplyList;


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
		map.put("/books.do", new Books());
		map.put("/bookDetails.do", new BookDetailsCommand());
		map.put("/bookSearch.do", new BookSearch());
		map.put("/bookCategoryList.do", new BookCategoryList());
		map.put("/rentalBook.do", new RentalBook());
		
		//QnA
		map.put("/qnaInputForm.do", new QnaInputForm());
		map.put("/qnaInput.do", new QnaInput());
		map.put("/qnaUpdateForm.do", new QnaUpdateForm());
		map.put("/qnaUpdate.do", new QnaUpdate());
		map.put("/qnaDelete.do", new QnaDelete());
		map.put("/qnaList.do", new QnaList());
		map.put("/qnaDetail.do", new QnaDetail());
		map.put("/ajaxSearchList.do", new AjaxSearchList());
		
		//Reply
		map.put("/replyInput.do", new ReplyInput());
		map.put("/replyList.do", new ReplyList());
		
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
		map.put("/join.do", new Join());
		map.put("/joinAction.do", new JoinAction());
		map.put("/selectAllId.do", new SelectAllId());
		map.put("/snsLogin.do", new SnsLogin());
		
		
		
		  //관리자
		map.put("/addBlacklist.do", new AddBlacklist());
		map.put("/blackList.do", new Blacklist());
		map.put("/categoryChart.do", new CategoryChart());
		map.put("/category.do", new Category());
		map.put("/memberList.do", new MemberList());
		map.put("/rentalList.do", new RentalList());
		map.put("/rentalChart.do", new RentalChart());
		map.put("/rental.do", new Rental());
		map.put("/run.do", new Run());
		map.put("/admin.do", new Admin());
		 
		  //마이페이지
			map.put("/mypageHome.do", new MypageHomeCommand());
		  map.put("/myInfo.do", new MyInfoCommand());
		  map.put("/checkPwForm.do", new CheckPwForm());
		  map.put("/checkPw.do", new CheckPw());
		  map.put("/changePwForm.do", new ChangePwForm());
		  map.put("/changePw.do", new ChangePw());
		  map.put("/checkPwFormMyInfo.do", new CheckPwFormMyInfo());
		  map.put("/checkPwForMyInfo.do", new CheckPwForMyInfo());
		  map.put("/changeMyInfoForm.do", new ChangeMyInfoForm());
		  map.put("/changeMyInfo.do", new ChangeMyInfo());
		  map.put("/memberExit.do", new MemberExit());
		  map.put("/checkMemberExit.do", new CheckMemberExit());
		  map.put("/nowRentalList.do", new NowRentalListCommand());
		  map.put("/myRentalList.do", new MyRentalListCommand());

	}

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8"); // 한글깨짐 방지
		String uri = request.getRequestURI(); // 요청 URI 구함
		String contextPath = request.getContextPath(); // 루트 디렉토리 정보
		String page = uri.substring(contextPath.length());; // contextPath.length()(<-이걸빼면) 이 다음부터는 들어가는게 페이지다. ,, 실제 요청 명령을 받음
		System.out.println(page);
		Command command = map.get(page); //맵에서 키를 던져주니 나한테 던져주는건 밸류(커맨드)를 돌아온다 즉 커맨드를 구한다
		System.out.println(command);
		String viewPage = command.exec(request, response); // exec를 찾을때 맨끝에 String이 붙어서 나오는데 돌려받는값이 스트링인걸 알수있다.
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
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage); // Dispatcher은 권한위임.
		dispatcher.forward(request, response);
	}
}

package damanna.member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import damanna.member.service.IMemberService;
import damanna.member.service.MemberServiceImpl;
import damanna.vo.MemberVO;

/**
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet("/memberLogin.do")
public class MemberLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IMemberService service = MemberServiceImpl.getInstance();

		String userId = request.getParameter("userid");
		String pass = request.getParameter("pass");
		
		System.out.println(userId);
		System.out.println(pass);
		String login = service.loginMember(userId);
		
		HttpSession session = request.getSession();
		
		if(login!=null && login.equals(pass)) {
			
			System.out.println("로그인 성공");
			session.setAttribute("userid", userId);
			request.setAttribute("seq", 1);
			
			request.getRequestDispatcher("/damanna/html/loginResult.jsp").forward(request, response);
//			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/main.jsp");
//			RequestDispatcher rd = request.getRequestDispatcher("/test/spify/index.jsp");
//			RequestDispatcher rd = request.getRequestDispatcher(request.getContextPath() + "/memberPicture.do");
//			rd.forward(request, response);
			
//			response.sendRedirect(request.getContextPath() + "/memberPicture.do");
			
		}else if(login!=null && !login.equals(pass)) {
			System.out.println("비밀번호 잘못 입력");
		}else {
			System.out.println("아이디 잘못 입력");
		}

//		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/login/login.jsp");
//		RequestDispatcher rd = request.getRequestDispatcher("/damanna/html/login.jsp");
//		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

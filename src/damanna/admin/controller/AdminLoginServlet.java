package damanna.admin.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import damanna.admin.service.AdminServiceImpl;
import damanna.admin.service.IAdminService;
import damanna.member.service.IMemberService;
import damanna.member.service.MemberServiceImpl;
import damanna.vo.MemberVO;

/**
 * Servlet implementation class MemberLoginServlet
 */
@WebServlet("/AdminLogin.do")
public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		IAdminService service = AdminServiceImpl.getInstance();

		String adminId = request.getParameter("adminid");
		String pass = request.getParameter("adminpass");

		String login = service.loginAdmin(adminId);
		
		HttpSession session = request.getSession();
		
		if(login!=null && login.equals(pass)) {
			
			System.out.println("로그인 성공");
			session.setAttribute("adminid", adminId);
			request.setAttribute("seq", 1);

			
			request.getRequestDispatcher("/damanna/html/loginResult.jsp").forward(request, response);

//			RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/main.jsp");
//			rd.forward(request, response);
			
		}else if(login!=null && !login.equals(pass)) {
			System.out.println("비밀번호 잘못 입력");
		}else {
			System.out.println("아이디 잘못 입력");
		}

//		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/login/login.jsp");
//		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}

//package damanna.member.controller;
//
//import java.io.IOException;
//import java.util.List;
//
//import javax.servlet.RequestDispatcher;
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import com.google.gson.Gson;
//
//import damanna.member.service.IMemberService;
//import damanna.member.service.MemberServiceImpl;
//import damanna.vo.MemberVO;
//
//@WebServlet("/member/memberWating.do")
//public class MemberWatingServlet extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		
//		IMemberService service = MemberServiceImpl.getInstance();
//		
//		List<MemberVO> memList2 = service.getWatingMember();
//		
//		request.setAttribute("memberList2", memList2);
//		System.out.println("wating서블릿test");
//		RequestDispatcher rd = 
//			request.getRequestDispatcher("/damanna/view/adminPage.jsp");
//		rd.forward(request, response);
//
////		String json = new Gson().toJson(memList);
////		response.setContentType("application/json");
////		response.setCharacterEncoding("utf-8");
////		response.getWriter().write(json);
////		
////		response.sendRedirect("/damanna/view/adminPage.jsp");
//
//	}
//
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		doGet(request, response);
//	}
//
//}

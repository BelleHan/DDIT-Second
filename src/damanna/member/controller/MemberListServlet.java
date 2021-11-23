package damanna.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import damanna.member.service.IMemberService;
import damanna.member.service.MemberServiceImpl;
import damanna.vo.MemberVO;

@WebServlet("/member/memberList.do")
public class MemberListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		IMemberService service = MemberServiceImpl.getInstance();
		
		List<MemberVO> memList = service.getWatingMember();
		List<MemberVO> memList2 = service.getAllMemberList();
		
		request.setAttribute("memberList", memList);
		request.setAttribute("memberList2", memList2);
		
		RequestDispatcher rd = 
			request.getRequestDispatcher("/damanna/view/adminPage.jsp");
		rd.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

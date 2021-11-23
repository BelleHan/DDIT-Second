package damanna.member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import damanna.member.service.IMemberService;
import damanna.member.service.MemberServiceImpl;

@WebServlet("/member/memberDelete.do")
public class MemberIdDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//삭제할 회원 ID 데이터 받아오기
		String memId = request.getParameter("mem_id");
		
		// 받아온 데이터를 VO객체에 담기
		
		IMemberService service = MemberServiceImpl.getInstance();
		service.deleteMember(memId); //DB에 delete하기
		System.out.println("딜리트 테스트");
		//관리 페이지로 이동하기
		response.sendRedirect(request.getContextPath() + "/member/memberList.do");

		
			}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

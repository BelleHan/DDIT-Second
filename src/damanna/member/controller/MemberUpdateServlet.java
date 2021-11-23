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

@WebServlet("/member/memberUpdate.do")
public class MemberUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		//form 에서 입력한 데이터 받아오기
		String n = "N";
		// 받아온 데이터를 VO객체에 담기
		MemberVO memvo = new MemberVO();
		memvo.setApprove_ny(n);
		
		IMemberService service = MemberServiceImpl.getInstance();
		service.updateMember(memvo);
		
		//관리페이지로 이동하기
		response.sendRedirect(request.getContextPath() + "/member/memberList.do");


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

package damanna.member.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import damanna.member.service.IMemberService;
import damanna.member.service.MemberServiceImpl;
import damanna.vo.MemberVO;


@WebServlet("/memberPicture.do")
public class MemberPictureServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		IMemberService service = MemberServiceImpl.getInstance();
		
		List<MemberVO> memVO = service.selectPicture();
		
		request.setAttribute("memList", memVO);
		
		RequestDispatcher rd =
				//request.getRequestDispatcher("/WEB-INF/test/spify/index.jsp");
			request.getRequestDispatcher("/test/spify/index.jsp");
	//		request.getRequestDispatcher("/test/index.jsp");
			rd.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

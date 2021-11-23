package damanna.board.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import damanna.board.service.FreeBoardServiceImpl;
import damanna.board.service.IFreeBoardService;
import damanna.vo.FreeBoardVO;

@WebServlet("/freeSelect.do")
public class FreeSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		IFreeBoardService service = FreeBoardServiceImpl.getInstance();
		
		int freeId = Integer.parseInt(request.getParameter("idx"));
		
		FreeBoardVO freeVo = (FreeBoardVO) service.getFree(freeId);
		
		service.getFreeCount(freeId);
		
		request.setAttribute("freeVo", freeVo);
		
		RequestDispatcher rd =
				request.getRequestDispatcher("/WEB-INF/board/freeBoard/freeView.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

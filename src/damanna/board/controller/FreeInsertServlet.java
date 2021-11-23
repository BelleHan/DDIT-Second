package damanna.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import damanna.board.service.FreeBoardServiceImpl;
import damanna.board.service.IFreeBoardService;
import damanna.vo.FreeBoardVO;

@WebServlet("/freeInsert.do")
public class FreeInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/board/freeBoard/freeWrite.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		
		String id = (String) session.getAttribute("userid");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		FreeBoardVO freeVo = new FreeBoardVO();
		
		freeVo.setMember_id(id);
		freeVo.setFree_title(title);
		freeVo.setFree_content(content);
		
		IFreeBoardService service = FreeBoardServiceImpl.getInstance();
		service.insertFree(freeVo);

		response.sendRedirect(request.getContextPath() + "/freeList.do");
	}

}

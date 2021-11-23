package damanna.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import damanna.board.service.FreeBoardServiceImpl;
import damanna.board.service.IFreeBoardService;
import damanna.vo.FreeBoardVO;

@WebServlet("/freeUpdate.do")
public class FreeUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("WEB-INF/board/freeBoard/freeUpdate.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		int freeId = Integer.parseInt(request.getParameter("idx"));
		
		FreeBoardVO freeVo = new FreeBoardVO();
		
		freeVo.setFree_id(freeId);
		freeVo.setFree_title(title);
		freeVo.setFree_content(content);
		
		IFreeBoardService service = FreeBoardServiceImpl.getInstance();
		service.updateFree(freeVo);
		
		response.sendRedirect(request.getContextPath() + "/freeList.do");
		
	}

}

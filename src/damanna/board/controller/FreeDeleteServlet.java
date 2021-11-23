package damanna.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import damanna.board.service.FreeBoardServiceImpl;
import damanna.board.service.IFreeBoardService;

@WebServlet("/freeDelete.do")
public class FreeDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		IFreeBoardService service = FreeBoardServiceImpl.getInstance();
		
		int freeId = Integer.parseInt(request.getParameter("idx"));
		
		service.deleteFree(freeId);
		
		response.sendRedirect(request.getContextPath() + "/freeList.do");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

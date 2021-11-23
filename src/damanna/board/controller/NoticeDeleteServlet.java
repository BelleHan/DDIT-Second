package damanna.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import damanna.board.service.INoticeBoardService;
import damanna.board.service.NoticeBoardServiceImpl;

@WebServlet("/noticeDelete.do")
public class NoticeDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		INoticeBoardService service = NoticeBoardServiceImpl.getInstance();
		
		int noticeId = Integer.parseInt(request.getParameter("idx"));
		
		service.deleteNotice(noticeId);
		
		response.sendRedirect(request.getContextPath() + "/noticeList.do");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

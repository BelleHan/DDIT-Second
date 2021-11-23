package damanna.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import damanna.board.service.INoticeBoardService;
import damanna.board.service.NoticeBoardServiceImpl;
import damanna.vo.NoticeBoardVO;


@WebServlet("/noticeSelect.do")
public class NoticeSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		INoticeBoardService service = NoticeBoardServiceImpl.getInstance();
		
		int noticeId = Integer.parseInt(request.getParameter("idx"));
		
		NoticeBoardVO noticeVo = (NoticeBoardVO) service.getNotice(noticeId);
		
		service.getNoticeCount(noticeId);
		
		request.setAttribute("noticeVo", noticeVo);
		
		RequestDispatcher rd =
				request.getRequestDispatcher("/WEB-INF/board/noticeBoard/view.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

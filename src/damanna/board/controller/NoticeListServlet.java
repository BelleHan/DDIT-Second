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

@WebServlet("/noticeList.do")
public class NoticeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		INoticeBoardService service = NoticeBoardServiceImpl.getInstance();
		 
		List<NoticeBoardVO> noticeList = service.getAllNoticeList();
		
		request.setAttribute("noticeList", noticeList);
		
		RequestDispatcher rd =
				request.getRequestDispatcher("/WEB-INF/board/noticeBoard/list.jsp");
		rd.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

package damanna.payment.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import damanna.payment.service.IPaymentService;
import damanna.payment.service.PaymentServiceImpl;
import damanna.vo.PaymentVO;



@WebServlet("/paymentList.do")
public class PaymentListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		IPaymentService service =  PaymentServiceImpl.getInstance();
		List<PaymentVO> payList = service.getAllpayList();
		request.setAttribute("paymentList", payList);
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/payment/payList.jsp");
		rd.forward(request, response);
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}

package damanna.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import damanna.member.service.IMemberService;
import damanna.member.service.MemberServiceImpl;
import damanna.vo.MemberVO;

@WebServlet("/member/memberInsert.do")
public class MemberInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String memberId = request.getParameter("mem_id");
		String memberPw = request.getParameter("mem_pass");
//		int cityCode = Integer.valueOf(request.getParameter("mem_city"));
		String memberNm = request.getParameter("mem_name");
		String memberBir = request.getParameter("mem_bir");
		String membmerMail = request.getParameter("mem_mail");
		String memberHp = request.getParameter("mem_hp");
		String memberGen = request.getParameter("mem_gen");
		String memberImg1 = request.getParameter("memberImg1");
		String memberImg2 = request.getParameter("memberImg2");
		String profileIntro = request.getParameter("profileIntro");
		String memberInsta = request.getParameter("mem_insta");
		String profileMusic = request.getParameter("profileMusic");
		String matchType = request.getParameter("matchType");
		
		// 받아온 데이터를 VO객체에 담기
		MemberVO memvo = new MemberVO();
		memvo.setMember_id(memberId);
		memvo.setMember_pw(memberPw);
//		memvo.setCity_code(cityCode);
		memvo.setMember_nm(memberNm);
		memvo.setMember_bir(memberBir);
		memvo.setMember_nm(memberNm);
		memvo.setMember_bir(memberBir);
		memvo.setMembmer_mail(membmerMail);
		memvo.setMember_hp(memberHp);
		memvo.setMember_gen(memberGen);
		memvo.setMember_img1(memberImg1);
		memvo.setMember_img2(memberImg2);
		memvo.setProfile_intro(profileIntro);
		memvo.setMember_insta(memberInsta);
		memvo.setProfile_music(profileMusic);
		memvo.setMatch_type(matchType);
		
		IMemberService service = MemberServiceImpl.getInstance();
		service.insertMember(memvo);  // DB에 insert하기
		

		//로그인 창으로 이동		
		response.sendRedirect(request.getContextPath() + "/damanna/html/login.jsp");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

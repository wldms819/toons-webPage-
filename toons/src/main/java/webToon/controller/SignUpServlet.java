package webToon.controller;

import java.io.IOException;
import java.sql.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import webToon.dto.ToonUserVO;
import webToon.model.ToonService;
import webToon.util.DateUtil;

@WebServlet("/views/signUp.do")
public class SignUpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("signUp.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		Date user_birthDate = DateUtil.convertStringToDate(request.getParameter("user_birthDate"));

		ToonService toonService = new ToonService();
		ToonUserVO userVO = new ToonUserVO(user_id, user_pw, user_name, user_birthDate);
		ToonUserVO userJoinInfo = toonService.insertUser(userVO);

		//request.setAttribute("message", userJoinInfo != null ? "회원가입 성공" : "회원가입 실패");
		
		HttpSession session = request.getSession();
		
		// 회원가입 성공하면 회원가입 성공창이 뜨고 login페이지로 가기
		// 회원가입 성공
		request.setAttribute("joinResult", "회원가입을 축하드립니다."); // 회원가입 성공시 메시지
		session.setAttribute("userJoinInfo", userJoinInfo);// 회원가입자 정보를 세션에 저장

//		response.sendRedirect("signIn.jsp"); 
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("signIn.jsp"); //signIn.do하면 안됨
		rd.forward(request, response);

//		RequestDispatcher rd;
//		rd = request.getRequestDispatcher("joinResult.jsp");
//		rd.forward(request, response);

	}

}

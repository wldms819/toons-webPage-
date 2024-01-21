package webToon.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import webToon.dto.ToonUserVO;
import webToon.model.ToonService;

@WebServlet("/views/signIn.do")
public class SignInServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//페이지를 열때, redierct => doGet
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("signIn.jsp"); //redirect를 하면 get으로 옴
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		ToonService toonService = new ToonService();
		ToonUserVO toonUserInfo = toonService.loginCheck(user_id, user_pw);
		
		//session에 로그인 정보를 저장하기(있으면얻기, 없으면생성)
		HttpSession session = request.getSession();
		
		//로그인 실패
		//userLoginVO에 정보가 없으면 로그인 창 다시 띄움
		if(toonUserInfo==null) {
			session.setAttribute("loginResult", "아이디와 비밀번호를 확인해주세요");
			response.sendRedirect("signIn.do");
			System.out.println("로그인 실패");
			return;
		}
		
		//로그인 성공
		session.setAttribute("loginResult", ""); //로그인 성공하면 alert창의 메세지 지워버림
		session.setAttribute("toonUserInfo", toonUserInfo);//사용자 정보를 저장 //toonUserInfo
		session.setAttribute("user_id", user_id);
		
		System.out.println("로그인 성공");
//		request.setAttribute("message", toonUserInfo==null?"로그인 실패": "로그인 성공");	
		
		//session에 로그인 정보를 저장해서 sendRedirect를 해도 브라우저가 닫히기 전까지 로그인 정보가 남아있음
		response.sendRedirect("mainPage.do"); 
//		RequestDispatcher rd;
//		rd = request.getRequestDispatcher("loginResult.jsp");
//		rd.forward(request, response);
		
	}

}

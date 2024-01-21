package webToon.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webToon.model.ToonService;


@WebServlet("/views/dropInfo.do")
public class DropInfoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("dropInfo.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		
		ToonService toonService = new ToonService();
		int deleteMyInfo = toonService.deleteMyInfo(user_id, user_pw);
		request.setAttribute("message", deleteMyInfo>0 ? "회원탈퇴 성공" : "회원탈퇴 실패");
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("signIn.jsp");
		rd.forward(request, response);
	}

}

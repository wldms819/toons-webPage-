package webToon.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

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

/**
 * Servlet implementation class MyPageServlet
 */
@WebServlet("/views/myPage.do")
public class MyPageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 로그인 할 때 사용자 정보를 이미 세션에 저장했으니 여기서는 안해줘도 된다.
		// String user_id = request.getParameter("user_id");
		// ToonService toonService = new ToonService();
		// List<ToonUserVO> toonUserInfo = toonService.selectMyInfo(user_id);
		// request.setAttribute("toonUserInfo", toonUserInfo);// 사용자 정보를 저장

		RequestDispatcher rd;
		rd = request.getRequestDispatcher("myPage.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		ToonUserVO toonUser = makeUserVO(request);
		ToonService toonService = new ToonService();

		int updateUserInfo = toonService.updateUserInfo(toonUser);
		request.setAttribute("message", updateUserInfo > 0 ? "회원정보수정 성공" : "회원정보수정 실패");

		HttpSession session = request.getSession();
		// session.setAttribute("updateUserInfo",
		// toonService.selectMyInfo(toonUser.getUser_id()));

		ToonUserVO updateInfo = toonService.selectMyRealInfo(toonUser.getUser_id());
		System.out.println(updateInfo);
		session.setAttribute("toonUserInfo", updateInfo);
		
		response.sendRedirect("myPage.do");
		
//
//		RequestDispatcher rd;
//		rd = request.getRequestDispatcher("myPage.jsp");
//		// rd = request.getRequestDispatcher("mainPage.jsp");
//		rd.forward(request, response);

	}

	private ToonUserVO makeUserVO(HttpServletRequest request) {
		String user_id = request.getParameter("user_id");
		String user_pw = request.getParameter("user_pw");
		String user_name = request.getParameter("user_name");
		Date user_birthDate = DateUtil.convertStringToDate(request.getParameter("user_birthDate"));
		int user_points = convertInteger(request.getParameter("user_points"));

		ToonUserVO toonUser = new ToonUserVO();
		toonUser.setUser_id(user_id);
		toonUser.setUser_pw(user_pw);
		toonUser.setUser_name(user_name);
		toonUser.setUser_birthDate(user_birthDate);
		toonUser.setUser_points(user_points);

		return toonUser;
	}

	private int convertInteger(String str) {
		if (str == null)
			return 0;
		return Integer.parseInt(str);
	}

}

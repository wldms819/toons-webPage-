package webToon.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import webToon.dto.ChargeToonPointsVO;
import webToon.model.ToonService;

/**
 * Servlet implementation class ChargePointsServlet
 */
@WebServlet("/views/chargePoints.do")
public class ChargePointsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("chargePoints.jsp"); // redirect를 하면 get으로 옴
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 포인트 충전
		request.setCharacterEncoding("utf-8");

		ChargeToonPointsVO toonPoints = chargeToonPoints(request);
		ToonService toonService = new ToonService();
		
		int insertMyPoints = toonService.insertMyPoints(toonPoints.getUser_id(), toonPoints.getCharge_points());
		request.setAttribute("message", insertMyPoints>0 ? "포인트 충전 성공" : "포인트 충전 실패");
		
		HttpSession session = request.getSession();
		session.setAttribute("toonUserInfo", toonService.selectMyRealInfo(toonPoints.getUser_id()));
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("chargePoints.jsp");
		rd.forward(request, response);
	}

	private ChargeToonPointsVO chargeToonPoints(HttpServletRequest request) {
		String user_id = request.getParameter("user_id");
		int charge_points = convertInteger(request.getParameter("charge_points"));

		ChargeToonPointsVO toonPoints = new ChargeToonPointsVO();
		toonPoints.setUser_id(user_id);
		toonPoints.setCharge_points(charge_points);
		

		return toonPoints;
	}

	private int convertInteger(String str) {
		if (str == null)
			return 0;
		return Integer.parseInt(str);
	}
}

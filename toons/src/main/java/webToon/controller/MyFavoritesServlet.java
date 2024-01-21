package webToon.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import webToon.dto.ChargeToonPointsVO;
import webToon.dto.MyFavoriteToonsVO;
import webToon.dto.ToonListVO;
import webToon.dto.ToonUserVO;
import webToon.model.ToonService;

/**
 * Servlet implementation class MyPageServlet
 */
@WebServlet("/views/myfavorites.do")
public class MyFavoritesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//내 웹툰 목록 조회
		//String user_id = request.getParameter("toonUserInfo");
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("user_id");
		System.out.println(user_id);
		
		ToonService toonService = new ToonService();
		List<ToonListVO> myToonList = toonService.selectMyToonList(user_id);
		session.setAttribute("myToonList", myToonList);
		System.out.println(myToonList);
		
		List<ToonListVO> sToonList = toonService.selectByInSeriesToonList();
		System.out.println(sToonList);
		session.setAttribute("sToonList", sToonList);
		
		//response.sendRedirect("myfavorites.jsp");
		
		 RequestDispatcher rd; 
		 rd = request.getRequestDispatcher("myFavorites.jsp");
		 rd.forward(request, response); 
		 
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//내 웹툰 목록 추가
//		request.setCharacterEncoding("utf-8");
//		String user_id = request.getParameter("user_id");
//		String toon_no = request.getParameter("toon_no");
//
//		ToonService toonService = new ToonService();
//		MyFavoriteToonsVO favoriteVO = new MyFavoriteToonsVO(user_id, toon_no);
//		int myFavoriteToons = toonService.insertMyToonList(favoriteVO);
//		request.setAttribute("message", myFavoriteToons>0 ? "웹툰 insert 성공" : "웹툰 insert 실패");
//		
//		response.sendRedirect("myfavorites.do");
		
	}
}

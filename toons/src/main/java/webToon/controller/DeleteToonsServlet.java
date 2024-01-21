package webToon.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import webToon.dto.MyFavoriteToonsVO;
import webToon.model.ToonService;

/**
 * Servlet implementation class AddToonsServlet
 */
@WebServlet("/views/deleteToons.do")
public class DeleteToonsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//		RequestDispatcher rd;
//		rd = request.getRequestDispatcher("myFavorites.do");
//		rd.forward(request, response);
		
		//response.sendRedirect("myFavorites.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 내 웹툰목록 삭제
		request.setCharacterEncoding("utf-8");
		String user_id = request.getParameter("user_id");
		String toon_no = request.getParameter("toon_no");

		ToonService toonService = new ToonService();
		MyFavoriteToonsVO favoriteVO = new MyFavoriteToonsVO(user_id, toon_no);
		int myFavoriteToons = toonService.deleteMyToonList(favoriteVO);
		request.setAttribute("message", myFavoriteToons > 0 ? "웹툰 delete 성공" : "웹툰 delete 실패");

		response.sendRedirect("myfavorites.do");
	}

}

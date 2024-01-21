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

import webToon.dto.ToonListVO;
import webToon.model.ToonService;

/**
 * Servlet implementation class ToonNameServlet
 */
@WebServlet("/views/searchByToonName.do")
public class SearchByToonNameServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("searchByToonName.jsp"); 
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String toon_name = request.getParameter("toon_name");
		String toon_writer = request.getParameter("toon_writer");
		
		ToonService toonService = new ToonService();
		List<ToonListVO> toonList = toonService.selectByToonName(toon_name);
		//List<ToonListVO> toonList2 = toonService.selectByToonWriter(toon_writer);
		
		//HttpSession session = request.getSession();
		request.setAttribute("toonList", toonList);//웹툰 정보를 저장
		//request.setAttribute("toonList2", toonList2);//웹툰 정보를 저장
		
		//response.sendRedirect("searchByToonName.do"); 
		
		RequestDispatcher rd;
		rd = request.getRequestDispatcher("searchByToonName.jsp"); 
		rd.forward(request, response);
	}

}

package com.javaex.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.javaex.dao.GuestbookDao;
import com.javaex.vo.GuestbookVo;

@WebServlet("/gbc")
public class GuestbookController extends HttpServlet {
	   	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("GuestbookController");
		
		//?action= 뒤에 올값으로 각 주소 > 파라미터 가져오기
		String act = request.getParameter("action");
		System.out.println(act);
		
		if("addlist".equals(act)) {
			
			System.out.println("action = addlist");
			
			GuestbookDao guestbookDao = new GuestbookDao();
			List<GuestbookVo> gbList = guestbookDao.getList();
			
			//포워드전에 값을 넣어놓기!
			request.setAttribute("gbList", gbList);
								//꺼내쓸이름, 넣어줄아이
			
			//포워드
			RequestDispatcher rd = request.getRequestDispatcher("./WEB-INF/addList.jsp"); //로 보낼게!
			rd.forward(request, response);
			
		}else if("add".equals(act)){
			System.out.println("action=add");
			
			//파라미터 3개를 꺼내온다
			String name = request.getParameter("name");

			
			//vo로 만든다
			//PersonVo personVo = new PersonVo(name, hp, company);
			//System.out.println(personVo);			
			
			//dao 메모리 올린다
			//PhoneDao phoneDao = new PhoneDao();
						
			//dao.insert(vo);
			//phoneDao.personInsert(personVo);
			
			//리다이렉트
			//response.sendRedirect("/phonebookd2/pbc?action=list");
			
		}else if("deleteForm".equals(act)) {
			System.out.println("action = deleteForm");
			
			//값
			//포워드
			RequestDispatcher rd = request.getRequestDispatcher("./WEB-INF/deleteForm.jsp");
			rd.forward(request, response);
			
		}else {
			System.out.println("파라미터 값 없음");
		}
				
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>
    
<%@ page import="com.javaex.dao.GuestbookDao" %>
<%@ page import="com.javaex.vo.GuestbookVo" %>
    
<%
		/*
		//guestboodDao의 delete쓸거임	
		GuestbookDao guestbookDao = new GuestbookDao();
		
		//파라미터값가져오기, 삭제하고자하는 no, 입력한 패스워드 가져오기
		String num = request.getParameter("no");
		int no = Integer.parseInt(num);
		String upw = request.getParameter("password");
		
		//db의 패스워드 가져오기
		String realPw = guestbookDao.select(no).getPassword();
		
		
		//같으면 삭제
		if(upw.equals(realPw)){
		guestbookDao.delete2(no);
		response.sendRedirect("./addList.jsp");
		}else{
			response.sendRedirect("./addList.jsp");
		}
		*/


		  int no = Integer.parseInt(request.getParameter("no"));
		   String password = request.getParameter("password");
		   
		   //해당하는 생성자를 만들고 사용해도 됨
		   //GuestbookVo guestbookVo = new GuestbookVo(no, password);
		   
		   //기본생성자를 이용하고 setter를 사용해서 값 초기화
		   GuestbookVo guestbookVo = new GuestbookVo();
		   guestbookVo.setNo(no);
		   guestbookVo.setPassword(password);
		   
		   
		   GuestbookDao guestbookDao = new GuestbookDao();
		   guestbookDao.delete(guestbookVo);
		   
		   
		   response.sendRedirect("./addList.jsp");
		   /*
		   GuestbookDao guestbookDao = new GuestbookDao();
		   int no = Integer.parseInt(request.getParameter("no"));
		   String password = request.getParameter("password");
		   
		   GuestbookVo guestbookVo = new GuestbookVo();
		   guestbookVo.setNo(no);
		   guestbookVo.setPassword(password);
		   
		   
		   String pw = guestbookDao.getPassword(no);
		   
		   if(password.equals(pw)){//비밀번호가 맞으면
		      guestbookDao.delete(guestbookVo);
		   }
		   
		   response.sendRedirect("./addList.jsp");
		   */   


		
		
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
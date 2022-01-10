<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%
 
 	//파라미터값 받기, 삭제테이블의 넘버 가져오기.
 	String num = request.getParameter("no");
 	int no = Integer.parseInt(num);
 	
 
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/guestbook2/gbc" method="get">
		
		비밀번호 <input type="password" name="password">
		
		<!--유저코드--> <input type="hidden" name="no" value="<%=no%>">
		<input type="text" name="action" value="delete">
		<button type="submit">확인</button>
	</form><br>
	<a href="/guestbook2/gbc?action=addList">메인으로 돌아가기</a>
	
	
	
</body>
</html>
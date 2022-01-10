<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %>

<%@ page import="com.javaex.vo.GuestbookVo" %>    

<%
								  //강제형변환필요
	List<GuestbookVo> gbList = (List<GuestbookVo>)request.getAttribute("gbList"); 

%>        
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<!-- 등록폼영역 -->
	<form action="/guestbook2/gbc" method="get" >
	<table border="2" width="500px">
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" value=""></td>
			<td>비밀번호</td>
			<td><input type="password" name="password" value=""></td>
		</tr>
		<tr>
			<td colspan="4">
				<textarea cols="65" rows="5" name="content"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="3">
				<button type="submit">작성하기</button>
			</td>
			<td>
			<input type="text" name="action" value="add">
			</td>
		</tr>

	</table>
	</form>
	<br>
	
	<!-- 리스트영역 -->
	<% for(int i=0; i<gbList.size(); i++){ %>
		<table border="2" width="500px">
		<tr>
			<td><%=gbList.get(i).getNo()%></td>
			<td><%=gbList.get(i).getName()%></td>
			<td><%=gbList.get(i).getRegDate()%></td>
			<td><a href="/guestbook2/gbc?action=deleteForm&no=<%=gbList.get(i).getNo()%>">삭제</a></td>
		</tr>
		<tr>
			<td colspan="4">
				<%=gbList.get(i).getContent()%>
			</td>
		</tr>
	</table>
	<br>
	<% } %>
	
	
	
	
	
	
	
	
</body>
</html>
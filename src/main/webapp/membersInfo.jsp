<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MembersInfo</title>
</head>
<body>
	<%
		List<HashMap<String, Object>> list 
			= (List<HashMap<String, Object>>) request.getAttribute("list");
		String html = "";
		for(int i = 0; i < list.size(); i++){
			html += "<p> 이름 : " + list.get(i).get("name") + "</p>";
			html += "<p> 아이디 : " + list.get(i).get("id") + "</p>";
			html += "<p> 프로필 : " + list.get(i).get("content") + "</p>";
			request.setAttribute("id", list.get(i).get("id"));
			%><a href="updateMembers.jsp">수정하기</a><%		
		}
	%>
	<%= html%>
	<p><a href="loginHome.jsp">처음으로</a></p>
	<a href="updateMembers.jsp">수정하기</a>
</body>
</html>
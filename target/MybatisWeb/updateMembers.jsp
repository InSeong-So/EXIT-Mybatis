<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Update Members</title>
</head>
<body>
	<%
		String id = request.getParameter("id");
	%>

	<form action="UpdateMembers" method="post">
		<input type="text" name="name" placeholder="수정할 이름을 적어주세요.">
		<%= id%><input type="hidden" value="<%= id%>">
		<input type="text" name="pass" placeholder="수정할 비밀번호를 적어주세요.">
		<input type="text" name="content" placeholder="프로필을 작성해주세요.">
		<input type="submit" value="수정">
	</form>
</body>
</html>
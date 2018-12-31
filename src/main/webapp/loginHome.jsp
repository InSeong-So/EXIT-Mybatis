<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login</title>
</head>
<body>
	<form action="LoginHome" method="post">
		<p><input type="text" name="id" placeholder="아이디를 입력해주세요."></p>
		<p><input type="text" name="pass" placeholder="비밀번호를 입력해주세요."></p>
		<p><input type="submit" value="로그인"></p>
	</form>
	<form action="newMembers.jsp">
		<input type="submit" value="회원가입">
	</form>
</body>
</html>
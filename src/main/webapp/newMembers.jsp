<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>New Members</title>
</head>
<body>
	<form action="NewMembers" method="post">
		<p><input type="text" name="name" placeholder="이름을 입력해주세요."></p>
		<p><input type="text" name="id" placeholder="사용하실 아이디를 입력하세요."></p>
		<p><input type="text" name="pass" placeholder="사용하실 비밀번호를 입력하세요."></p>
		<p><input type="text" name="content" placeholder="프로필을 작성해주세요."></p>
		<p><input type="submit" value="저장하기"></p>
	</form>
</body>
</html>
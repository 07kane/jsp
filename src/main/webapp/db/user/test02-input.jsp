<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form method="get" action="/db/user/insert">
			<label>사이트명 : </label><input type="text" name="name"><br>
			<label>사이트 주소 : </label><input type="text" name="birthday"><br>
			
			<button type="submit">추가</button>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	<h1>메뉴검색</h1>
	<form method="post" action="/jsp/test/test07.jsp">
		<div class="box's">
			<input type="text" name="menu"><input type="checkbox" name="four"><b>4점 이하 제외</b>
			<br>
			<button type="submit">제출하기</button>
		</div>
	</form>
	
</body>
</html>
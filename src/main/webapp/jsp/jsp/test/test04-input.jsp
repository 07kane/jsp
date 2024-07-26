<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test04-input</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	<h1>사칙 연산</h1>
	<form method="post" action="/jsp/test/test04.jsp">
		<input type="text" aria-describedby="inputGroup-sizing-default" name="number1">
		
		<select name="calculations">
			<option value="plus">+</option>
			<option value="minus">-</option>
			<option value="multiplication">x</option>
			<option value="division">/</option>
		</select>
		
		<input type="text" aria-describedby="inputGroup-sizing-default" name="number2">
		
		
		<button type="submit">계산</button>
	</form>
</body>
</html>
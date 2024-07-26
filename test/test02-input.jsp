<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>몸무게 측정</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	<h1>체격조건 입력</h1>
	<form method="get" action="/jsp/test/test02.jsp">
		<div id="height">			
			<div class="input-group input-group-lg">
			  <input width="400px" type="text" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
			</div>
		</div>
		<div id="kg">
			<div class="input-group input-group-lg">
			  <input width="400px" type="text" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-lg">
			</div>
		</div>
		<button class="btn btn-primary" type="submit">계산</button>
	</form>
</body>
</html>
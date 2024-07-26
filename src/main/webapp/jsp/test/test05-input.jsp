<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test05</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	<h1>길이변환</h1>
	<form method="post" action="/jsp/test/test05.jsp">
		<input type="text" name="cm"><label>cm</label>
		<div id="box">
			<label>인치<input type="checkbox" name="unit" value="in"></label>
			<label>야드<input type="checkbox" name="unit" value="ya"></label>
			<label>피트<input type="checkbox" name="unit" value="pit"></label>
			<label>미터<input type="checkbox" name="unit" value="m"></label>	
		</div>
		<div id="sm">
			<button type="submit" class="btn btn-success">변환</button>
		</div>
	</form>
	
</body>
</html>
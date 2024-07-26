<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test02</title>
</head>
<body>
	<%
		String height = request.getParameter("height");
		String kg = request.getParameter("kg");
		int heigthInt = Integer.parseInt(height);
		int kgInt = Integer.parseInt(kg);
		double BMI =  kgInt / ((heigthInt / 100.0) * (heigthInt/ 100.0));
		String jubge = null;
		
		if(BMI < 18.5)
		{
			jubge = "저체중";
		}
		else if(BMI >= 18.5 && BMI < 25)
		{
			jubge = "정상";
		}
		else if(BMI >= 25 && BMI < 30)
		{
			jubge = "과체중";
		}
		else if(BMI >= 30)
		{
			jubge = "비만";
		}
	%>
	
	<h2>BMI 측정 결과</h2>
	<h1> 당신은 <%= jubge %>입니다.</h1>
	<h4>BMI수치 <%= BMI %></h4>
</body>
</html>
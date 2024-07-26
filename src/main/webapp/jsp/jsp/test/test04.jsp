<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
	<%
		String number1 = request.getParameter("number1");
		String calculations = request.getParameter("calculations");
		String number2 = request.getParameter("number2");
		
		int num1 = Integer.parseInt(number1);
		int num2 = Integer.parseInt(number2);
		int result = 0;
		char operator = ' ';
		
		if(calculations.equals("plus"))
		{
			result = num1 + num2;
			operator = '+';
		}
		
		else if(calculations.equals("minus"))
		{
			result = num1 - num2;
			operator = '-';
		}
		
		else if(calculations.equals("multiplication"))
		{
			result = num1 * num2;
			operator = '*';
		}
		
		else if(calculations.equals("division"))
		{
			result = num2 / num2;
			operator = '/';
		}
	%>
	
	<h2>계산 결과</h2>
	<div class="d-flex">
		<h1><%= number1 + operator + number2 + " = " %> </h1>
		<h1 class="d-flex text-primary"><%= result %></h1>	
	</div>
</body>
</html>
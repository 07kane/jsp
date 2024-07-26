<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import ="java.util.Date" %>
    <%@ page import = "java.text.SimpleDateFormat" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test03</title>
</head>
<body>
	<%
		String what = request.getParameter("what");
	
		Date now = new Date();
		SimpleDateFormat dateFormatter = new SimpleDateFormat("현재 날짜는 yyyy년 M월 d일");
		SimpleDateFormat timeFormatter = new SimpleDateFormat("현재 시간은 H시 m분 s초");
	
		// what - date : 날짜
		// what - time : 시간
		
		String dateString = dateFormatter.format(now);
		String timeString = timeFormatter.format(now);
		
		String result = " ";
		if(what.equals("date"))
		{
			result = dateString;
		}
		
		else if(what.equals("time"))
		{
			result = timeString;
		}
	%>
	
	<div claas="container">
		<div class="display-4"><%=result %></div>
	</div>	
</body>
</html>
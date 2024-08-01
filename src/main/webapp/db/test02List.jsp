<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.marondal.servlet.common.MysqlService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test02 List</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<%
	MysqlService mysqlService = MysqlService.getInstance();
	mysqlService.connect();
	List<Map<String, Object>> resultList = mysqlService.select("SELECT * FROM `bookmark`");
%>

	<table boreder="1" class="table">
		<thead>
			<tr>
				<th>사이드</th>
				<th>사이트 주소</th>
			</tr>
		</thead>
		
		<tbody>
		<%for(Map<String, Object> resultMap : resultList) 
		{%>
			<tr>
				<td><%= resultMap.get("name") %></td>
				<td><a href="<%= resultMap.get("url") %>"><%= resultMap.get("url") %></a></td>
			</tr>
		<%} %>
		</tbody>
	</table>
</body>
</html>
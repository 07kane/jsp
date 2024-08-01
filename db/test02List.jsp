<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.marondal.servlet.ex.common.MysqlService" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>즐겨찾기 목록</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<%
    MysqlService mysqlService = MysqlService.getInstance();
    mysqlService.connect();
    List<Map<String, Object>> resultList = mysqlService.select("SELECT * FROM `bookmark` ORDER BY `id` DESC");
%>

<table border="1" class="table">
    <thead>
        <tr>
            <th>사이트명</th>
            <th>사이트 주소</th>
            <th>삭제</th>
        </tr>
    </thead>
    <tbody>
    <% for(Map<String, Object> resultMap : resultList) 
    { %>
        <tr>
            <td><%= resultMap.get("name") %></td>
            <td><a href="<%= resultMap.get("url") %>"><%= resultMap.get("url") %></a></td>
            <td><a href="<%= request.getContextPath() %>/db/test/test02Delete?id=<%= resultMap.get("id") %>">삭제</a></td>
        </tr>
    <% } %>
    </tbody>
</table>
</body>
</html>

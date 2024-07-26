<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>메뉴 검색</title>
</head>
<body>
    <%
        List<Map<String, Object>> list = Arrays.asList(
            new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); }},
            new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); }},
            new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); }},
            new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); }},
            new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); }},
            new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); }},
            new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); }}
        );

        String menu = request.getParameter("menu");
        String nu = request.getParameter("nu");
        String search = request.getParameter("search");
    %>

    <h1>메뉴검색</h1>
    <form method="get">
    	<input type="text" name="menu">
    	<input type="checkbox" name="nu"><label>4점 이하 제외</label><br>
    	<button type="submit" name="search">검색</button>
    </form>
    <% if(menu != null) 
    {%>
    <table border="1">
    	<thead>
    		<tr>
    			<th>메뉴</th>
    			<th>상호</th>
    			<th>별점</th>
    		</tr>    	
    	</thead>
    </table>
    <% } %>
</body>
</html>

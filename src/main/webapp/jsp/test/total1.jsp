<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>종합문제</title>
<link rel="stylesheet" href="style01.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<%
    List<Map<String, String>> list = new ArrayList<>();
    Map<String, String> map = new HashMap<String, String>() {{ put("ch", "5"); put("name", "SBS"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "7"); put("name", "KBS2"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "9"); put("name", "KBS1"); put("category", "지상파"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "11"); put("name", "MBC"); put("category", "지상파"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "54"); put("name", "OCN"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "56"); put("name", "Screen"); put("category", "영화"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "57"); put("name", "Mplex"); put("category", "영화"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "30"); put("name", "KBS 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "32"); put("name", "MBC 드라마"); put("category", "드라마"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "34"); put("name", "Olive"); put("category", "드라마"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "3"); put("name", "tvN"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "28"); put("name", "MBC Every1"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "48"); put("name", "JTBC2"); put("category", "예능"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "49"); put("name", "E채널"); put("category", "예능"); } };
    list.add(map);

    map = new HashMap<String, String>() {{ put("ch", "120"); put("name", "SPOTV"); put("category", "스포츠"); } };
    list.add(map);
    map = new HashMap<String, String>() {{ put("ch", "121"); put("name", "KBSN 스포츠"); put("category", "스포츠"); } };
    list.add(map);
    
    String targetCategory = request.getParameter("category");
    
%>

	<div id="wrap">
		<header class="display-3 align-items-center justify-content-center d-flex">
			<div class="title ">SK broadband IPTV</div>
		</header>
		<nav class="bg-danger d-flex align-items-center">
			<ul class="nav nav-fill w-100 d-flex justify-content-between">
				<li class="nav-item"><a href="#" class="nav-link text-white">전체</a></li>
				<li class="nav-item"><a href="http://localhost:8080/jsp/test/total1.jsp?category=%EC%A7%80%EC%83%81%ED%8C%8C#" class="nav-link text-white">지상파</a></li>
				<li class="nav-item"><a href="http://localhost:8080/jsp/test/total1.jsp?category=%EB%93%9C%EB%9D%BC%EB%A7%88#" class="nav-link text-white">드라마</a></li>
				<li class="nav-item"><a href="http://localhost:8080/jsp/test/total1.jsp?category=%EC%98%88%EB%8A%A5#" class="nav-link text-white">예능</a></li>
				<li class="nav-item"><a href="http://localhost:8080/jsp/test/total1.jsp?category=%EC%98%81%ED%99%94" class="nav-link text-white">영화</a></li>
				<li class="nav-item"><a href="http://localhost:8080/jsp/test/total1.jsp?category=%EC%8A%A4%ED%8F%AC%EC%B8%A0" class="nav-link text-white">스포츠</a></li>
			</ul>
		</nav>
		<section class="contents">
			<table border="1" class="table text-center table-bordered text-center">
				<thead>
				<tr>
					<th>채널</th>
					<th>채널명</th>
					<th>카테고리</th>
				</tr>
				</thead>
				
				<tbody>
				<% for(Map<String, String> channer : list) 
				{
					if(targetCategory.equals(channer.get("category")))
					{
						
					
				%>
					<tr>
						<td> <%= channer.get("ch") %> </td>		
						<td> <%= channer.get("name") %> </td>	
						<td> <%= channer.get("category") %> </td>			
					</tr>	
				<%} %>	
			   <%}%>
				</tbody>
			</table>
		</section>
		<footer class="foot">
			<div class="display-6 foot-content d-flex align-items-center justify-content-center">
				Copylight 2021. Marondal All Right Reserved.
			</div>
		</footer>
	</div>
</body>
</html>
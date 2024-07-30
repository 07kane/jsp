<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Total2</title>
<link rel="stylesheet" href="style2.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
</head>
<body>
<%
//아티스트 정보 

 Map<String, Object> artistInfo = new HashMap<>();
 artistInfo.put("name", "아이유");
 artistInfo.put("debute", 2008);
 artistInfo.put("agency", "EDAM엔터테인먼트");
 artistInfo.put("photo", "https://musicmeta-phinf.pstatic.net/artist/000/112/112579.jpg?type=ff300_300");


//아이유 노래 리스트 
 List<Map<String, Object>> musicList = new ArrayList<>();

 Map<String, Object> musicInfo = new HashMap<>();
 musicInfo.put("id", 1);
 musicInfo.put("title", "팔레트");
 musicInfo.put("album", "Palette");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
 musicInfo.put("time", 217);
 musicInfo.put("composer", "아이유");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 2);
 musicInfo.put("title", "좋은날");
 musicInfo.put("album", "Real");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/184/184117.jpg?type=r360Fll");
 musicInfo.put("time", 233);
 musicInfo.put("composer", "이민수");
 musicInfo.put("lyricist", "김이나");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 3);
 musicInfo.put("title", "밤편지");
 musicInfo.put("album", "palette");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/000/2000240.jpg?type=r360Fll");
 musicInfo.put("time", 253);
 musicInfo.put("composer", "제휘,김희원");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 4);
 musicInfo.put("title", "삐삐");
 musicInfo.put("album", "삐삐");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/002/559/2559408.jpg?type=r360Fll");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "이종훈");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 5);
 musicInfo.put("title", "스물셋");
 musicInfo.put("album", "CHAT-SHIRE");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/000/592/592471.jpg?type=r360Fll");
 musicInfo.put("time", 194);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);

 musicInfo = new HashMap<>();
 musicInfo.put("id", 6);
 musicInfo.put("title", "Blueming");
 musicInfo.put("album", "Love poem");
 musicInfo.put("singer", "아이유");
 musicInfo.put("thumbnail", "https://musicmeta-phinf.pstatic.net/album/003/399/3399860.jpg?type=r360Fll");
 musicInfo.put("time", 217);
 musicInfo.put("composer", "아이유,이종훈,이채규");
 musicInfo.put("lyricist", "아이유");
 musicList.add(musicInfo);
%>


	<div id="wrap">
		<header class="d-flex">
		 	<div class="logo d-flex justify-content-center align-items-center">
		 		<b class="logo-text display-4">Melong</b>
		 	</div>
		 	<div class="search d-flex justify-content-start align-items-end">
		 		<div class="input-group mb-3">
  				<input type="text" class="form-control" aria-describedby="button-addon2">
  				<div class="input-group-append">
    				<button class="btn btn-outline-secondary bg-info text-white" type="button" id="button-addon2">Button</button>
  				</div>
			</div>
		 	</div>
		</header>
		
		<nav class="navigator d-flex align-items-center">
			<ul class="nav nav-fill">
				<li class="nav-item"><a href="#" class="nav-link text-black"><b>멜롱챠트</b></a></li>
				<li class="nav-item"><a href="#" class="nav-link"><b>최신음악</b></a></li>
				<li class="nav-item"><a href="#" class="nav-link"><b>장르음악</b></a></li>
				<li class="nav-item"><a href="#" class="nav-link"><b>멜롱DJ</b></a></li>
				<li class="nav-item"><a href="#" class="nav-link"><b>뮤직어워드</b></a></li>
			</ul>
		</nav>
		
		<section class="contents">
	    <article class="people d-flex border border-success p-3">
        <div class="pht">
        	<img width="150px" height="170px" src="<%= artistInfo.get("photo") %>" alt="사진입니다">
		</div>
        <div class="text-infomation ml-3">      
        	<h4><%= artistInfo.get("name") %></h4>        
        	<h5><%= artistInfo.get("agency") %></h5>
        	<h5><%= artistInfo.get("debute") %></h5>
        </div>
    	</article>
    	<article class="main_contents mt-4">
    	<h4>곡 목록</h4>
    		<table border="1" class="table table-sm">
    			<thead>
    				<tr>
    					<th>no</th>
    					<th>제목</th>
    					<th>앨범</th>
    				</tr>
    			</thead>
    			<tbody>
    				<% for(Map<String, Object>list : musicList) 
    				{%>
    					<tr>
	   						<td><%= list.get("id") %></td>
	   						<td><a href="/jsp/test/total02-info.jsp?id=<%= list.get("id") %>"><%= list.get("title") %></a></td>
	   						<td><%= list.get("album") %></td>
    					</tr>
    				<%} %>
    			</tbody>
    		</table>
    	</article>
		</section>
			
		<footer class="display-5 d-flex justify-content-start">
			<b>Copyright 2021. melong All Rights Reserved</b>
		</footer>
	</div>
</body>
</html>
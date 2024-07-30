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
// 아티스트 정보 

    Map<String, Object> artistInfo = new HashMap<>();
    artistInfo.put("name", "아이유");
    artistInfo.put("debute", 2008);
    artistInfo.put("agency", "EDAM엔터테인먼트");
    artistInfo.put("photo", "https://images.lifestyleasia.com/wp-content/uploads/sites/6/2024/01/31141627/south-korean-singer-actress-iu-boyfriend-personal-life-lee-jong-suk-bts-v.jpg?tr=w-1600");


// 아이유 노래 리스트 
    List<Map<String, Object>> musicList = new ArrayList<>();

    Map<String, Object> musicInfo = new HashMap<>();
    musicInfo.put("id", 1);
    musicInfo.put("title", "팔레트");
    musicInfo.put("album", "Palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", 217);
    musicInfo.put("composer", "아이유");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 2);
    musicInfo.put("title", "좋은날");
    musicInfo.put("album", "Real");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/3/3c/IU_-_Real.jpg");
    musicInfo.put("time", 233);
    musicInfo.put("composer", "이민수");
    musicInfo.put("lyricist", "김이나");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 3);
    musicInfo.put("title", "밤편지");
    musicInfo.put("album", "palette");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/b/b6/IU_Palette_final.jpg");
    musicInfo.put("time", "253");
    musicInfo.put("composer", "제휘,김희원");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 4);
    musicInfo.put("title", "삐삐");
    musicInfo.put("album", "삐삐");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://ww.namu.la/s/5ea8ba97baf8af3cc13f2972d9d23bcd17e19b8b8a96ce86d50c4bd03ad4df30321fc7e012738ad4b00c50642195ef7a68ff484ad760b15ff46bb1dc45ffb3fc399e4345c5d4dd2240820b59f3a573a57f84b8a6a2e4fb26ce5e81ad66d85f77debc979900275f6cf7a51386c8c39aa9");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "이종훈");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 5);
    musicInfo.put("title", "스물셋");
    musicInfo.put("album", "CHAT-SHIRE");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://w.namu.la/s/4a817b8f4ec9caca4027a6991651a401d683a7691f1926bd60e59908f306d439f7cc251af5ef263a6f0a249e831d5d9cf641855bf590dadd86869ff941aad8dc236bc91bac89f84cff60c981d8d6c85f57a2ff4df00b5efe3bbc10e9745ce13571eda48f1912435423317450475d6ffe");
    musicInfo.put("time", 194);
    musicInfo.put("composer", "아이유,이종훈,이채규");
    musicInfo.put("lyricist", "아이유");
    musicList.add(musicInfo);

    musicInfo = new HashMap<>();
    musicInfo.put("id", 6);
    musicInfo.put("title", "Blueming");
    musicInfo.put("album", "Love poem");
    musicInfo.put("singer", "아이유");
    musicInfo.put("thumbnail", "https://upload.wikimedia.org/wikipedia/ko/6/65/%EC%95%84%EC%9D%B4%EC%9C%A0_-_Love_poem.jpg");
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
	    <article class="people d-flex">
        <div class="photo">
       		<img width="200px" height="200px" src="<%= artistInfo.get("photo") %>" alt="사진입니다">
        </div>
        <div class="text-infomation">      
        	<h4><%= artistInfo.get("name") %></h4>        
        	<h5><%= artistInfo.get("agency") %></h5>
        	<h5><%= artistInfo.get("debute") %></h5>
        </div>
    	</article>
    	<article class="main_contents">
    		<table border="1" class="table">
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
	   						<td><a href="#"><%= list.get("title") %></a></td>
	   						<td><%= list.get("album") %></td>
    					</tr>
    				<%} %>
    			</tbody>
    		</table>
    	</article>
		</section>
			
		<footer class="display-5 d-flex justify-content-start">
			<b>Copyright 2021, melong All Rights Reserved</b>
		</footer>
	</div>
</body>
</html>
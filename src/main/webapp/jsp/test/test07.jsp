<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%  
    List<Map<String, Object>> list = new ArrayList<>();
    Map<String, Object> map = new HashMap<String, Object>() {{ put("name", "버거킹"); put("menu", "햄버거"); put("point", 4.3); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BBQ"); put("menu", "치킨"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "교촌치킨"); put("menu", "치킨"); put("point", 4.1); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "도미노피자"); put("menu", "피자"); put("point", 4.5); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "맥도날드"); put("menu", "햄버거"); put("point", 3.8); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "BHC"); put("menu", "치킨"); put("point", 4.2); } };
    list.add(map);
    map = new HashMap<String, Object>() {{ put("name", "반올림피자"); put("menu", "피자"); put("point", 4.3); } };
    list.add(map);
    String menu = request.getParameter("menu");  
    String four = request.getParameter("four");  
%>

<div class="container">
    <table border="1">
        <thead>
            <tr>
                <th>메뉴</th>
                <th>상호</th>
                <th>별점</th>    
            </tr>
        </thead>
        <tbody>
            <% 
                boolean dataFound = false; // 데이터가 있는지 여부를 확인하기 위한 플래그
                for(Map<String, Object> store : list) 
                { 
                    if(menu != null && menu.equals(store.get("menu")) && four != null) 
                    { 
                        double star = (Double)store.get("point");
                        if(star >= 4.0)
                        {
                            dataFound = true; 
					            %>
					            <tr>
					                <td><%= store.get("menu") %></td>
					                <td><%= store.get("name") %></td>
					                <td><%= store.get("point") %></td>
					            </tr>
					            <% 
                        }
                    }
                    else if(menu != null && menu.equals(store.get("menu")) && four == null)
                    {
                    	%>
			            <tr>
			                <td><%= store.get("menu") %></td>
			                <td><%= store.get("name") %></td>
			                <td><%= store.get("point") %></td>
			            </tr>
			            <% 
                    }
                }
            %>
        </tbody>
    </table>
</div>

</body>
</html>

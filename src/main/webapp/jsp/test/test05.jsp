<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>변환 결과</title>
</head>
<body>
    <%
        String cm = request.getParameter("cm");
        String[] units = request.getParameterValues("unit");

        double cmValue = Double.parseDouble(cm);
        String result = "";
        
        for (String unit : units) 
        {
            double convertedValue = 0;
            
            if (unit.equals("in")) 
            {
                convertedValue = cmValue / 2.54;
            } 
            else if (unit.equals("ya")) 
            {
                convertedValue = cmValue / 91.44;
            } 
            else if (unit.equals("ft"))
            {
                convertedValue = cmValue / 30.48;
            } 
            else if (unit.equals("m"))
            {
                convertedValue = cmValue / 100;
            } 
            result += convertedValue + " " + unit + "<br>";
        }
    %>
    <h2>변환 결과</h2>
    <h3><%= cm + "cm" %></h3>
    <hr>
    <h3><%= result%></h3>
</body>
</html>

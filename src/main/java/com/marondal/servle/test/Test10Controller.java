package com.marondal.servle.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/test10")
public class Test10Controller extends HttpServlet
{	
	// doPost 메소드 바깥쪽에 위치
	private final Map<String, String> userMap =  new HashMap<String, String>() 
	{
	    {
	        put("id", "hagulu");
	        put("password", "asdf");
	        put("name", "김인규");
	    }
	};
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		request.setCharacterEncoding("utf-8");
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		PrintWriter out = response.getWriter();
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		
		
		 if(!id.equals(userMap.get("id")))
		 { 
			 out.println("error");
		 }
		 
		 else if(!password.equals(userMap.get("password")))
		 { 
			 out.println("error"); 
		 }
		 
		 else if(!name.equals(userMap.get("name"))) 
		 { 
			 out.println("error"); 
		 }
		
		 else 
		 { 
			 out.println("환영합니다!"); 
		 }

	}
}

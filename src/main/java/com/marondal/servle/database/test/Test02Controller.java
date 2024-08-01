package com.marondal.servle.database.test;

import javax.security.auth.message.callback.PrivateKeyCallback.Request;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

public class Test02Controller extends HttpServlet
{
	public void doGet(HttpServletResponse response, HttpServletRequest request)
	{
		MysqlService mysqlService = MysqlService.getInstance();
		
		String name = request.getParameter("name");
		String url = request.getParameter("url");
	}
}

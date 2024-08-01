package com.marondal.servle.database.test;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.marondal.servlet.common.MysqlService;

@WebServlet("/db/test/test01")
public class Test01Controller extends HttpServlet 
{
	private Connection connection;
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		response.setContentType("text/plain");
		
		PrintWriter out = response.getWriter();
		
		MysqlService mysqlService = MysqlService.getInstance();
		//접속
		mysqlService.connect();
		
		List<Map<String, Object>> resultList = mysqlService.select("SELECT * FROM `real_estate` ORDER BY id DESC LIMIT 10");
		
		for(Map<String, Object> resultMap : resultList)
		{
			String address = (String)resultMap.get("address");
			int area = (Integer)resultMap.get("area");
			String type = (String)resultMap.get("type");
			
			out.println("매물 주소 : " + address + " 면적 : " + area + " 타입 : " + type);
		}
		
		String query = "INSERT INTO `used_goods`\r\n"
				+ "(`realtorId`, `address`, `area`, `type`, price)\r\n"
				+ "VALUE\r\n"
				+ "(3, '헤리펠리스', 2000, '2444');";
		
		int count = mysqlService.update(query);
		
		out.println("삽입결과 : " + count);
	}
}

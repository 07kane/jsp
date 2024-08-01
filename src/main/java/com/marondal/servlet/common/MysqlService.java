package com.marondal.servlet.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MysqlService
{	
	private Connection connection;
	
	//클래스를 설계하는 입장에서 
	//객체를 하나만 만들어서 공용으로 사용하도록 설계
	//Singleton (Design pattern)
	private static MysqlService mysqlService = null;
	
	// singleton 객체를 돌려주는 메소드
	// static: 객체 생성없이 사용 가능한 메소드, 멤버변수
	// static 메소드 안에서는 static 멤버 변수만 사용이 가능하다.
	public static MysqlService getInstance()
	{
		if(mysqlService == null)
		{
			mysqlService = new MysqlService();
		}
		
		return mysqlService;
	}
	// 접속
	public void connect()
	{
		try
		{
	
			// 데이터 베이스 접속
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
						
			//접속주소 & 포트, id password
			String url = "jdbc:mysql://localhost:3306/asm";
			String id = "root";
			String password = "root";
						
			connection = DriverManager.getConnection(url, id, password);
		}
		
		catch(SQLException e)
		{
			e.printStackTrace();
		}
	}
	//select 쿼리 수행
	public List<Map<String, Object>> select(String query)
	{
		try
		{
			Statement statement = connection.createStatement(); //connection는 MySQL과 연결해주는 객체이다
			ResultSet resultSet = statement.executeQuery(query); //statement는 쿼리를 실행한다
			
			List<Map<String, Object>> resultList = new ArrayList<>();
			
			ResultSetMetaData rsmd = resultSet.getMetaData(); //ResultSetMetaData는 불러온 데이터를 한 행씩 저장을 한다
			int columnCount = rsmd.getColumnCount();
			
			
			List<String> columnNames = new ArrayList<>();
			
			for(int i = 1; i <= columnCount; i++)
			{
				columnNames.add(rsmd.getColumnName(i));
			}
			
			while(resultSet.next())
			{
				Map<String, Object> resultMap = new HashMap<>();
				
				// 컬럼 이름을 통해 값을 얻어와서
				// 한 행의 정보를 컬럼 단위로 맵에 추가
				for(String name : columnNames)
				{
					Object value = resultSet.getObject(name);
					
					resultMap.put(name, value);
				}
				resultList.add(resultMap);
			}
			return resultList;
		}
				
		catch (SQLException e)
		{
			return null;
		}
	}
	//insert, update, delete 쿼리 수행
	public int update(String query)
	{
		try
		{
			Statement statement = connection.createStatement();
			return statement.executeUpdate(query); //행의 수 반환
		} 
		
		catch (SQLException e) //에러가 발생되 경우
		{
			return -1; //-1은 비정상적으로 수행, 종료되었음을 알리는 숫자이다
		}
	}
	//접속 끊기
	public void disconnect()
	{
		try 
		{
			connection.close(); //접속을 끊기
		} 
		catch (SQLException e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}

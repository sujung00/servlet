package com.test.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.Driver;

public class MysqlService {
	//필드
	private static MysqlService mysqlService = null;
	
	// 도메인 뒤에 접속할 데이터베이스명까지 넣는다.
	private String url = "jdbc:mysql://localhost:3307/db-220919";
	private String id = "root";
	private String password = "root";
	
	private Connection conn;
	private Statement statement;
	private ResultSet res;
	
	//메소드
	
	//Singleton 패턴 : MysqlService라는 객체가 단 하나만 생성될 수 있도록 하는 디자인 패턴
	private MysqlService() {
		// 아무도 생성자로 new하지 못하게
	}
	
	public static MysqlService getInstance() {
		if(mysqlService == null) {
			mysqlService = new MysqlService();
		} 
		return mysqlService;
	}
	
	//DB 접속
	public void connect() {
		try {
			// 1.드라이버 메모리에 로딩
			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
			
			// 2. DB 연결
			conn = DriverManager.getConnection(url, id, password);
			
			// 3. 쿼리할 수 있는 준비 statement
			statement = conn.createStatement();
		} catch (SQLException e) {
			e.printStackTrace();
		}	
	}
	
	//DB연결 해제
	public void disconnect() {
		try {
			statement.close();
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	
	// CRUD : create, read, update, delete
	// R 	CUD
	// R: read, select
	public ResultSet select(String query) throws SQLException {
		res = statement.executeQuery(query);
		return res;
	}
	
	// CUD : insert, update, delete
	public void update(String query) throws SQLException {
		statement.executeUpdate(query);
	}
}

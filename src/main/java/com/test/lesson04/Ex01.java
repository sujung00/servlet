package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex01")
public class Ex01 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest resuqest, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		// db연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect(); // 실질적인 DB 연결!!!
		
		// insert query
		String insertQuery = "insert into `used_goods` (`sellerId`, `title`, `description`, `price`, `pictureUrl`)"
				+ "values (1, '고양이 간식 팝니다.', '저희 고양이가 입맛이 까다로워서 안먹어요ㅠ', 2000, null);";
		/*
		 * try { ms.update(insertQuery); } catch (SQLException e1) {
		 * e1.printStackTrace(); }
		 */

		// query select => 출력
		PrintWriter out = response.getWriter();
		String selectQuery = "select * from `used_goods`";
		try {
			ResultSet res = ms.select(selectQuery);
			while(res.next()) { //결과 행이 있는 동안 수행
				out.println(res.getInt("id"));
				out.println(res.getString("title"));
				out.println(res.getInt("price"));
				out.println(res.getString("description"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		// db 연결 해제
		ms.disconnect();
	}
}

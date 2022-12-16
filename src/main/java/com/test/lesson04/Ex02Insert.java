package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/ex02_insert")
public class Ex02Insert extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest reqeust, HttpServletResponse response) throws IOException {
		//content type 생략 - 다른 페이지로 보낼 것이기 때문에(내가 응답을 만들지 않음)
		
		//request parameter들 꺼내기
		String name = reqeust.getParameter("name");
		String yyyymmdd = reqeust.getParameter("yyyymmdd");
		String introduce = reqeust.getParameter("introduce");
		String email = reqeust.getParameter("email");
		
		//DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		//new_user에 insert
		String insertQuery = "insert into `new_user`"
				+ "(`name`, `yyyymmdd`, `introduce`, `email`)"
				+ "values"
				+ "('" + name + "', '" + yyyymmdd + "', '" + introduce + "', '" + email + "')";
		
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//DB 연결 해제
		ms.disconnect();
		
		//사용자 목록 화면 이동(Redirect)
		response.sendRedirect("/lesson04/ex02/ex02_1.jsp");
	}
}

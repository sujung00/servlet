package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/insert_quiz03")
public class InsertQuiz03 extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		int id = Integer.parseInt(request.getParameter("id"));
		String title = request.getParameter("title");
		int price = Integer.parseInt(request.getParameter("price"));
		String description = request.getParameter("description");
		String pictureUrl = request.getParameter("pictureUrl");
		
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		String insertQuery = "insert into `used_goods` (`sellerId`, `title`, `description`, `price`, `pictureUrl`)"
				+ "value ( "+ id +", '"+ title +"', '"+ description +"', "+ price +", '"+ pictureUrl +"');";
		try {
			ms.update(insertQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		ms.disconnect();
		
		response.sendRedirect("/lesson04/quiz03/template1.jsp");
	}
}

package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MysqlService;

@WebServlet("/lesson04/delete_ex02")
public class DeleteEx02 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//request parameter 삭제할 id
		int id = Integer.parseInt(request.getParameter("id"));
		
		//DB 연결
		MysqlService ms = MysqlService.getInstance();
		ms.connect();
		
		//delete query DB
		String deleteQuery = "delete from `new_user` where id = "+ id +";";
		
		try {
			ms.update(deleteQuery);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		//DB 연결 해제
		ms.disconnect();
		
		//유저 목록 페이지로 리다이렉트 이동
		response.sendRedirect("/lesson04/ex02_1.jsp");
	}
}

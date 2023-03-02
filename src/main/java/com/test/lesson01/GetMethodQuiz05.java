package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		//한글 깨짐 방지
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		int num =Integer.parseInt(request.getParameter("num"));
		
		PrintWriter out = response.getWriter();
		out.println("<html><head><title>Quiz05</title></head><body><ul>");
		for(int i = 1; i <= 9; i++) {
			out.println("<li>" + num + " X " + i + " = " + num*i + "</li>");
		}
		out.println("</ul></body></html>");
	}
}

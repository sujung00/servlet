package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/ex02")
public class UrlMappingEx02 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest reqeust, HttpServletResponse response) throws IOException {
		//한글 깨짐 방지
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		// 서블릿 : 자바코드 + HTML
		PrintWriter out = response.getWriter();
//		out.println("안녕하세요");
//		out.println("안녕하세요");
//		out.println("<h1>안녕하세요</h1>");
		
		// 1+2+3+4+...+10
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		
		out.print("<html><head><title>합계</title></head><body>");
		out.print("합계 : <b>" + sum + "</b>");
		out.print("</body></html>");
		
	}
}

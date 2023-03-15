<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select A.*, B.* from seller AS A join used_goods AS B on A.id = B.sellerId order by A.id desc;";
	ResultSet res = ms.select(selectQuery);
%>
<div class="d-flex flex-wrap justify-content-between">
	<%
	while (res.next()) {
	%>
	<article class="p-2 m-2">
		<%
		if (res.getString("pictureUrl") == null || res.getString("pictureUrl").equals("")) {
		%>
		<div class="image d-flex align-items-center justify-content-center">
			<h4>이미지 없음</h4>
		</div>
		<%
		} else {
		%>
		<img src="<%=res.getString("pictureUrl")%>" alt="판매물품" width="300"
			height="160">
		<%
		}
		%>
		<div class="font-weight-bold"><%=res.getString("title")%></div>
		<div class="text-secondary"><%=res.getInt("price")%>원
		</div>
		<div class="text-orange"><%=res.getString("nickname")%></div>
	</article>
	<%
	}
	%>
</div>
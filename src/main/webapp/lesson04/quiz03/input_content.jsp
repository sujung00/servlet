<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
MysqlService ms = MysqlService.getInstance();
ms.connect();

String selectQuery = "select id, nickname from seller";
ResultSet rs = ms.select(selectQuery);
%>
<div class="text-secondary text m-3">물건 올리기</div>
<form method="post" action="/lesson04/quiz03_insert">
	<div class="d-flex justify-content-between">
		<select class="form-control col-3" id="sellerId" name="sellerId">
			<option value="default">-아이디 선택-</option>
			<%
			// 판매자 아이디 목록들
			while (rs.next()) {
				int id = rs.getInt("id");
			%>
			<option value="<%= id %>"><%=rs.getString("nickname")%></option>
			<%
			}
			%>

		</select> <input type="text" class="form-control col-5" name="title"
			placeholder="제목" id="titleInput">
		<div class="input-group  col-3">
			<input type="text" class="form-control" name="price" placeholder="가격"
				id="priceInput">
			<div class="input-group-append">
				<span class="input-group-text">원</span>
			</div>
		</div>

	</div>

	<textarea class="form-control mt-3" cols="100" rows="5"
		name="description"></textarea>

	<div class="input-group mt-3">
		<div class="input-group-prepend">
			<span class="input-group-text">이미지 url</span>
		</div>
		<input type="text" class="form-control " name="pictureUrl">

	</div>
	<input type="submit" value="저장" class="btn btn-block mt-3">
</form>
<%
ms.disconnect();
%>
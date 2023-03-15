<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="p-4">
	<h1 class="mb-4">물건 올리기</h1>
	<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();

	String selectQuery = "select * from seller;";
	ResultSet res = ms.select(selectQuery);
	%>
	<form method="post" action="/lesson04/insert_quiz03">
		<div class="d-flex justify-content-center">
			<select name="id" id="id" class="form-control col-3">
				<option value="">-아이디 선택-</option>
				<%
				while (res.next()) {
				%>
				<option value="<%=res.getInt("id")%>"><%=res.getString("nickname")%></option>
				<%
				}
				%>
			</select>
			
			<input type="text" name="title" id="title" class="form-control col-4 ml-5" placeholder="제목">
			
			<div class="input-group col-3 ml-5">
				<input type="text" name="price" id="price" class="form-control"
					placeholder="가격">
				<div class="input-group-append">
					<span class="input-group-text">원</span>
				</div>
			</div>
			
		</div>
		
		<textarea rows="5" name="description"class="form-control mt-3"></textarea>
		
		<div class="input-group mt-3">
			<div class="input-group-prepend">
				<span class="input-group-text">이미지 url</span>
			</div>
			<input type="text" class="form-control" name="pictureUrl" id="pictureUrl">
		</div>
		
		<input type="submit" id="submitBtn" class="btn btn-light mt-3 col-12" value="저장">
	</form>
	<%
	ms.disconnect();
	%>
</div>
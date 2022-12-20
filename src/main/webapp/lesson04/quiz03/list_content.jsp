<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="d-flex flex-wrap justify-content-around">
	<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();

	String selectQuery = "select seller.*, used_goods.* from seller join used_goods on seller.id = used_goods.sellerId order by sellerId desc";
	ResultSet rs = ms.select(selectQuery);
	%>
	<%
	while (rs.next()) {
	%>
	<div class="item mt-2">
		<div class="d-flex justify-content-center mt-2">
			<%
			if (rs.getString("pictureUrl") != null) {
			%>
			<img alt="상품 이미지" src="<%=rs.getString("pictureUrl")%>" width="330px"
				height="200px">
			<%
			} else {
			%>
			<div class="image d-flex justify-content-center align-items-center">
				<div class="text-secondary font-weight-bold">이미지 없음</div>
			</div>
			<%
			}
			%>
		</div>
		<div class="ml-2">
			<div class="font-weight-bold item-text"><%=rs.getString("title")%></div>
			<div class="text-secondary price"><%=rs.getInt("price")%>원
			</div>
			<div class="seller item-text font-weight-bold"><%=rs.getString("nickname")%></div>
		</div>
	</div>
	<%
	}
	ms.disconnect();
	%>
</div>
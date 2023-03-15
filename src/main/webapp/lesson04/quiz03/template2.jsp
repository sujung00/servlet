<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.js"
	integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
	crossorigin="anonymous"></script>
<style>
header {
	background: orange;
}

menu {
	background: orange;
}

menu a, a:hover {
	color: white;
}

.text-orange {
	color: orange;
}

.image {
	width: 300px;
	height: 160px
}

article:hover {
	background: orange;
}

article {
	border-style: solid;
	border-width: 0.5px;
	border-color: #FFA500;
}
</style>
<script>
	$(document).ready(function() {
		$("#submitBtn").on("click", function() {
			// 판매자, 제목, 가격에 유효성 검사
			let id = $("#id").val();
			if(id.length < 1){
				alert("아이디를 선택해 주세요.");
				return;
			}
			
			let title = $("#title").val();
			title = title.trim();
			if(title.length < 1){
				alert("제목을 입력해주세요.");
				return;
			}
			
			let price = $("#price").val();
			price = price.trim();
			if(price.length < 1){
				alert("가격을 입력해주세요.");
				return;
			}
		});
	});
</script>
</head>
<body>
	<div class="container">
		<header class="text-center text-white pt-2 pb-2">
			<jsp:include page="header.jsp" />
		</header>
		<menu class="m-0 pb-2">
			<jsp:include page="menu.jsp" />
		</menu>
		<section class="mt-2">
			<jsp:include page="content2.jsp"></jsp:include>
		</section>
		<footer class="text-center m-3">
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
</body>
</html>
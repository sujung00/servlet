<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무 마켓</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
<style>
header{background: orange;}
menu {background: orange;}
menu a, a:hover {
	color: white;
}
.text-orange{color: orange;}
.image {width: 300px; height: 160px}
article:hover {background: orange;}
article {
border-style:solid;
border-width: 0.5px;
border-color: #FFA500;}
</style>
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
        	<jsp:include page="content1.jsp" />
		</section>
		<footer class="text-center m-3">
			<jsp:include page="footer.jsp" />
		</footer>
	</div>
</body>
</html>
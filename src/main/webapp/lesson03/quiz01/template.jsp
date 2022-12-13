<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>채널 안내</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<!-- bootstrap CDN link -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- jquery slim 제거-->
<!--<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<style>
header {
	height: 50px;
	font-size: 30px;
}

.menu {
	height: 40px;
}

footer {
	height: 60px
}
</style>
</head>
<body>
	<div id="wrap" class="container">
		<jsp:include page="header.jsp" />

		<jsp:include page="menu.jsp" />

		<%
		int category = Integer.parseInt(request.getParameter("category"));
		String contentName = "";
		if(category == 0) {
			contentName = "contentAll.jsp";
		} else if (category == 1) {
			contentName = "contentGW.jsp";
		} else if (category == 2) {
			contentName = "contentDrama.jsp";
		} else if (category == 3) {
			contentName = "contentEntertainment.jsp";
		} else if (category == 4) {
			contentName = "contentMovie.jsp";
		} else if (category == 5) {
			contentName = "contentSport.jsp";
		}
		
		%>

		<jsp:include page="<%= contentName %>" />

		<jsp:include page="footer.jsp" />

	</div>
</body>
</html>
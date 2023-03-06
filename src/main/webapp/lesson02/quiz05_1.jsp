<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</head>
<body>
	<%
	int cm = Integer.parseInt(request.getParameter("cm"));
	String[] measureArr = request.getParameterValues("measure");
	%>
	<div class="container">
		<h2>길이 변환 결과</h2>
		<h3><%= cm %>cm</h3>
		<hr>
		<%
		if(measureArr != null){
			for(String measure : measureArr){
				double num;
				if (measure.equals("inch")){
					num = cm * 0.393701;
					measure = "in";
				} else if (measure.equals("yard")){
					num = cm * 0.0109361;
					measure = "yd";
				} else if (measure.equals("feet")){
					num = cm * 0.0328084;
					measure = "ft";
				} else {
					num = cm * 0.01;
					measure = "m";
				}
		%>
		<h3><%= num %> <%= measure %></h3>
		<% 	}
		}
		%>
		
	</div>
</body>
</html>
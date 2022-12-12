<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>
</head>
<body>
	<%
	int cm = Integer.parseInt(request.getParameter("cm"));
	String[] unitArr = request.getParameterValues("unit");
	%>

	<h1>길이 변환 결과</h1>
	<h3><%=cm%>cm</h3>
	<hr>
	<h2>
		<%
		double inch = 0;
		double yard = 0;
		double feet = 0;
		double meter = 0;
		if (unitArr != null) {
			for (String unit : unitArr) {
				if (unit.equals("inch")) {
					inch = cm * 0.393701;
					out.print(inch + "in<br>");
				} else if (unit.equals("yard")) {
					yard = cm * 0.0109361;
					out.print(yard + "yd<br>");
				} else if (unit.equals("feet")) {
					feet = cm * 0.0328084;
					out.print(feet + "ft<br>");
				} else if (unit.equals("meter")) {
					meter = cm * 0.01;
					out.print(meter + "m");
				}
			}
		}
		%>
	</h2>

</body>
</html>
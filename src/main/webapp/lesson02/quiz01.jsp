<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
<%!
	//1. 1부터 n까지의 합계를 구하는 함수
	public int getSum(int n) {
		int firstSum = 0;
		for (int i = 1; i <= n; i++) {
			firstSum += i;
		}
		return firstSum;
	}
%>
<%
	//2. 점수들의 평균 구하기
	int[] scores = {80, 90, 100, 95, 80};
	int secondSum = 0;
	for (int i = 0; i < scores.length; i++) {
		secondSum += scores[i]; 
	}
	double avg = (double)secondSum/scores.length;
%>
<%
	//3. 채점 결과
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int thirdSum = 0;
	for (int i = 0; i < scoreList.size(); i++) {
		if(scoreList.get(i).equals("O")) thirdSum += 100/scoreList.size();
	}
%>
<%
	//4. 나이 구하기
	String birthDay = "20010820";
	int year = Integer.parseInt(birthDay.substring(0, 4));
	int age = 2022 - year + 1;
%>
<%
	//1번 N값
	int num = 50;
%>
<strong>1부터 <%=num%>까지의 합은 <%=getSum(num)%>입니다.</strong><br>
<strong>평균 점수는 <%=avg%>입니다.</strong><br>
<strong>채점 결과는 <%=thirdSum%>점 입니다.</strong><br>
<strong><%=birthDay%>의 나이는 <%=age%>세 입니다.</strong>
</body>
</html>
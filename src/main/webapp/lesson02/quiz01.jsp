<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>
	<%!
	// 1
	public int getSum(int n){
		int sum = 0;
		for(int i = 1; i <= n; i++){
			sum += i;
		}
		return sum;
	}
	%>
	<h2>1부터 50까지의 합은 <%= getSum(50) %>입니다.</h2>
	
	<%
	//2
	int[] scores = {80, 90, 100, 95, 80};
	double avg = 0;
	for(int i =0; i < scores.length; i++){
		avg += scores[i];
	}
	avg = avg / scores.length;
	%>
	<h2>평균 점수는 <%=avg%>입니다.</h2>
	
	<%
	//3
	List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
	int score = 0;
	for(int i = 0; i < scoreList.size(); i++){
		if(scoreList.get(i).equals("O")){
			score += 100/scoreList.size();
		}
	}
	%>
	<h2>채점 결과는 <%=score%>점 입니다.</h2>
	
	<%
	//4
	String birthDay = "20010820";
	int year = Integer.parseInt(birthDay.substring(0, 4));
	
	int age = 2023 - year + 1;
	%>
	<h2><%= birthDay %>의 나이는 <%= age %>세 입니다.</h2>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error2.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>연산결과 cal4</h2>
<%
	//1. num1, num2 parameter 받기

	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	//2. +, -, *, / 출력하기
	out.println(num1 + " + " + num2 + " = " + (num1 + num2) + "<p>");
	out.println(num1 + " - " + num2 + " = " + (num1 - num2) + "<p>");
	out.println(num1 + " * " + num2 + " = " + (num1 * num2) + "<p>");
	out.println(num1 + " / " + num2 + " = " + (num1 / num2) + "<p>");


%>
</body>
</html>
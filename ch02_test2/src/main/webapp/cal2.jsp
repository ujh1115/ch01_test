<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>연산결과 cal2</h2>
<%
	//1. num1, num2 parameter 받기
try {
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	//2. +, -, *, / 출력하기
	out.println(num1 + " + " + num2 + " = " + (num1 + num2) + "<p>");
	out.println(num1 + " - " + num2 + " = " + (num1 - num2) + "<p>");
	out.println(num1 + " * " + num2 + " = " + (num1 * num2) + "<p>");
	out.println(num1 + " / " + num2 + " = " + (num1 / num2) + "<p>");
	//3. Exception error.jsp
}	catch (Exception e) {
	RequestDispatcher rd = request.getRequestDispatcher("error.jsp");
	rd.forward(request, response);
}

%>

</body>
</html>
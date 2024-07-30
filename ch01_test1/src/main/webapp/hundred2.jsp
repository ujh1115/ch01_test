<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	int sum = 0;
	for (int i=1; i<=100; i++) {
		sum += 1;
	}
	request.setAttribute("sum1", sum);
	pageContext.setAttribute("sum2", sum);
	RequestDispatcher rd = request.getRequestDispatcher("hunResult2.jsp");
	rd.forward(request, response); 
	
%>
<%-- /sum1 : ${num1 } <p>
sum2 : ${num2 } <p>
 --%>

</body>
</html>
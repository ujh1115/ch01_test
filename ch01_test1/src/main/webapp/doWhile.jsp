<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>구구단</h2>
<table border="1" bgcolor="yellow">
<tr>
	<%
		int i=2, j=2;
		do {
			out.println("<th>" + i + "단</th>");
			i++;
		} while (i<=9);
		out.println("</td>");
		out.println("<tr>");
		i=2;
		j=1;	
 		do {
			if(i%2==0)
				out.println("<td bgcolor=pink>");
			else
				out.println("<td bgcolor=orange>");
			do {
				out.println(i + " * " + j + " = " + (i * j) + "<br>");
				j++;
			} while (j <= 9);
			out.println("</td>");
			j = 1;
			i++;
		} while (i <= 9); 
			
	%>
</table>

</body>
</html>
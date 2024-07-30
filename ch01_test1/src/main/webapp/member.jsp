<%@page import="java.io.FileWriter"%>
<%@page import="java.util.Date"%>
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
/* 
1. 아래해결
2. "/WEB-INF/file/" + id + ".txt"
아이디 : " + id + "\r\n 암호 : " + password + \r\n
이름 : " + name + "\r\n 취미 : " + hobbys + "\r\n
성별 : " + gender + "\r\n

*/

	String hobbys = "";
	String id = request.getParameter("id");
	String password = request.getParameter("password");
	String name = request.getParameter("name");
	String hobby[] = request.getParameterValues("hobby");
	String gender = request.getParameter("gender");
	
	String real = application.getRealPath("/WEB-INF/file/" + id + ".txt");
	String str = "아이디 : " + id + "\r\n";
	str += "암호 : " + password + "\r\n";
	str += "이름 : " + name + "\r\n";
	System.out.println("real->" + real);

	for (int i=0; i<hobby.length; i++) {
		hobbys += hobby[i] + " ";
	}
    str += "\r\n취미 : " + hobbys + "\r\n성별 : " + gender;      
	FileWriter fw = new FileWriter(real);
	fw.write(str);
	fw.close();
%>

<h2>회원정보</h2>
아이디 : <%=id %><p>
암호 : <%=password %><p>
이름 : <%=name %><p>
취미 : <%=hobbys %><p>
성별 : <%=gender %><p>


</body>
</html>
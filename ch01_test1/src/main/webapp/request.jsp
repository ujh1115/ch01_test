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
	String protocol = request.getProtocol();
	String server = request.getServerName();
	int port = request.getServerPort();
	String clientIP = request.getRemoteAddr();
	String clientHost = request.getRemoteHost();
	String methodType = request.getMethod();
	String url = new String(request.getRequestURL());
	String uri = request.getRequestURI();
	String contextPath = request.getContextPath(); //****
	String browser = request.getHeader("User-Agent");
	String mediaType = request.getHeader("Accept");

%>

	<h2>Request내장 객체 예제</h2>
	프로토콜명 : <%=protocol%> <p>
	접속한 서버명 : <%=server%> <p>
	접속한 서버의 포트 번호 : <%=port%> <p>
	클라이언트의 IP : <%=clientIP%> <p>
	클라이언트의 호스트명 : <%=clientHost%> <p>
	현재 페이지의 method방식 : <%=methodType%> <p>
	요청한 현재 페이지의 경로(URL) : <%=url%> <p>
	요청한 현재 페이지의 경로(URI) : <%=uri%> <p>
	웹어플리케이션에서의 컨텍스트 경로 : <%=contextPath%> <p>
	사용한 웹 브라우저 : <%=browser%> <p>
	웹 브라우저가 지우너하는 매체(media)의 타입: <%=mediaType%> <p>
	
</body>
</html>
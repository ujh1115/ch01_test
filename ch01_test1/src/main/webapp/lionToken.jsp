<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:set var="animals" value="토끼,고양이*강아지,여우"/>
	<h2>사자의 생일</h2>                     
	<c:forTokens var="animal" items="${animals }" delims=",*">
		${animal } <p>
	</c:forTokens>
<!--       delims , : 원소별로
	              * : 2대2로
	             ,* : 개별로       -->
                                
</body>
</html>
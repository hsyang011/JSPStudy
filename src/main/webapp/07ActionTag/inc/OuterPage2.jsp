<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>OuterPage</title>
</head>
<body>
	<!-- 외부파일 1과 동일한 내용 -->
	<h2>외부파일 2</h2>
	<%
	// 변수선언
	String newVar2 = "백제 온조왕";
	%>
	<!-- 2개의 영역의 속성값을 읽어서 출력한다. -->
	<ul>
		<li>page영역 속성 : <%= pageContext.getAttribute("pAttr") %></li>
		<li>request영역 속성 : <%= request.getAttribute("pAttr") %></li>
	</ul>
</body>
</html>
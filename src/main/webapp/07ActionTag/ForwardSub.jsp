<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>액션태그 - forward</title>
</head>
<body>
	<h2>포워드 결과</h2>
	<ul>
		<li>page영역 : <%= pageContext.getAttribute("pAttr") %></li>
		<li>request영역 : <%= request.getAttribute("rAttr") %></li>
	</ul>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�׼��±� - forward</title>
</head>
<body>
	<h2>������ ���</h2>
	<ul>
		<li>page���� : <%= pageContext.getAttribute("pAttr") %></li>
		<li>request���� : <%= request.getAttribute("rAttr") %></li>
	</ul>
</body>
</html>
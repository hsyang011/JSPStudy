<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>OuterPage</title>
</head>
<body>
	<!-- �ܺ����� 1�� ������ ���� -->
	<h2>�ܺ����� 2</h2>
	<%
	// ��������
	String newVar2 = "���� ������";
	%>
	<!-- 2���� ������ �Ӽ����� �о ����Ѵ�. -->
	<ul>
		<li>page���� �Ӽ� : <%= pageContext.getAttribute("pAttr") %></li>
		<li>request���� �Ӽ� : <%= request.getAttribute("pAttr") %></li>
	</ul>
</body>
</html>
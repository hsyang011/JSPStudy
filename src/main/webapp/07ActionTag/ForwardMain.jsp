<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
// page, request������ �Ӽ��� �����Ѵ�.
pageContext.setAttribute("pAttr", "������");
request.setAttribute("rAttr", "���");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�׼��±� - forward</title>
</head>
<body>
	<!-- ������ �̵��� ��� ���ο� �������� ���� ��û�� �߻��ϰ� �ǹǷ� ������ ���� �ٸ� �������� �ǹ��Ѵ�.
	���� page, request���� ��� �������� �ʴ´�. -->
	
	<!-- �̵��ؼ��� ������ ������ �ְ� ������ application�̳� session�� �����
	������ ������ �ϰ� ������ �ַ� session������ ����� -->
	<h3>sendRedirect�� ���� ������ �̵�</h3>
	<%-- response.sendRedirect("ForwardSub.jsp"); --%>
	
	<!-- ������� ���������� request������ �����ȴ�.
	�ּ�ǥ���ٿ��� ���� ��û�� �������� ��ΰ� ����������, ����ڴ� ������� �������� ������ ���� �ȴ�.
	��, �ϳ��� ��û�� 2���� �������� �����ϴ� �����̴�. -->
	<h2>�׼��±׸� �̿��� ������</h2>
	<jsp:forward page="/07ActionTag/ForwardSub.jsp"/>
	
	<!-- �׼��±׸� ����ϸ� JSP�ڵ庸�� �ξ� �� �����ϰ� �ڵ带 ǥ���� �� �ִ�. -->
	<%-- request.getRequestDispatcher("ForwardSub.jsp").forward(request, response); --%>
</body>
</html>
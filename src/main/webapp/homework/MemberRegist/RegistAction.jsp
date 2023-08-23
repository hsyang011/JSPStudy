<%@page import="utils.JSFunction"%>
<%@page import="homework.Member2DAO"%>
<%@page import="homework.Member2DTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = request.getParameter("id");
String pass = request.getParameter("pass1");
String name = request.getParameter("name");

String email1 = request.getParameter("email1");
String email2 = request.getParameter("email2");
String email = email1+"@"+email2;

int addrNum = Integer.parseInt(request.getParameter("zipcode"));
String addr1 = request.getParameter("addr1");
String addr2 = request.getParameter("addr2");

String phone1 = request.getParameter("mobile1");
String phone2 = request.getParameter("mobile2");
String phone3 = request.getParameter("mobile3");
String phone = phone1+"-"+phone2+"-"+phone3;

Member2DTO dto = new Member2DTO();
dto.setId(id);
dto.setPass(pass);
dto.setName(name);
dto.setEmail(email);
dto.setAddrNum(addrNum);
dto.setAddr1(addr1);
dto.setAddr2(addr2);
dto.setPhone(phone);

Member2DAO dao = new Member2DAO(application);
int iResult = dao.insertMember(dto);
dao.close();

if (iResult == 1) {
	JSFunction.alertBack("회원가입에 성공하였습니다.", out);
} else {
	JSFunction.alertBack("회원가입에 실패하였습니다.", out);
}
%>
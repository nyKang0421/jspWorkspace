<%@page import="kr.basic.member.MemberDAO"%>
<%@page import="kr.basic.member.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id= request.getParameter("id");
String pw=request.getParameter("pw");
String name=request.getParameter("name");
int age=Integer.parseInt(request.getParameter("age"));
String email=request.getParameter("email");
String phone=request.getParameter("phone");

int cnt = MemberDAO.getInstance().insertAMember(id, pw, name, age, email, phone);
System.out.println("cnt= " + cnt);

if(cnt!=0){
%>
<script>
alert('가입 성공');
location.href ="./01_memberlist.jsp";
</script>
<%}else{%>
<script>
alert('가입 실패');
location.href ="./05_memberJoin.jsp";
</script>
<%}%>

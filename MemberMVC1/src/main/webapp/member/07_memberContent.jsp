<%@page import="kr.basic.member.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./header.jsp" %>
<%
ArrayList<Member> alist = MemberDAO.getInstance().getAMemberInfo(Integer.parseInt(request.getParameter("num")));
%>
<h1> 회원정보 </h1>
<form action="./08_memberUpdatePro.jsp" method="post">
<table>
 
 <tr>
 	<td>아이디</td>
 	<td><input type="text" name="id" value="<%=alist.get(0).getId() %>" onlyread></td>
 </tr>
 <tr>
 	<td>아이디</td>
 	<td><input type="text" name="id" value="<%=alist.get(0).getId() %>" onlyread></td>
 </tr>
 <tr>
 <tr>
 	<td>이름</td>
 	<td><input type="text" name="name" value="<%=alist.get(0).getNum() %>" required></td>
 </tr>
 <tr>
 	<td>나이</td>
 	<td><input type="number" name="age" value="<%=alist.get(0).getAge()%>" required></td>
 </tr>
 <tr>
 	<td>이메일</td>
 	<td><input type="email" name="email" value="<%=alist.get(0).getEmail()%>" required></td>
 </tr>
 <tr>
 	<td>전화번호</td>
 	<td><input type="tel" name="phone" value="<%=alist.get(0).getPhone()%>" required></td>
 </tr>
 <tr>
 	<td colspan ="2"><input type="submit" value="정보수정"></td>
 </tr>
</table>

<%@include file="./footer.jsp" %>
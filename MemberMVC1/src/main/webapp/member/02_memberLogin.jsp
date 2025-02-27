<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./header.jsp" %>
<h1> 로그인 </h1>

<form action="./03_memberLoginPro.jsp" method="post">
<table>
 <tr>
 	<td>아이디</td>
 	<td><input type="text" name="id" required></td>
 </tr>
 <tr>
 	<td>비밀번호</td>
 	<td><input type="text" name="pw" required></td>
 </tr>
 <tr>
 	<td colspan ="2"><button>로그인</button></td>
 </tr>
</table>
</form>
<%@include file="./footer.jsp" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./header.jsp" %>
<h1> 회원가입 </h1>

<form action="./06_memberJoinPro.jsp" method="post">
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
 <tr>
 	<td>이름</td>
 	<td><input type="text" name="name" required></td>
 </tr>
 <tr>
 	<td>나이</td>
 	<td><input type="number" name="age" required></td>
 </tr>
 <tr>
 	<td>이메일</td>
 	<td><input type="email" name="email" required></td>
 </tr>
 <tr>
 	<td>전화번호</td>
 	<td><input type="tel" name="phone" required></td>
 </tr>
 <tr>
 	<td colspan ="2"><input type="submit" value="회원가입"></td>
 </tr>
</table>
</form>
<%@include file="./footer.jsp" %>
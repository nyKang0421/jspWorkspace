<%@page import="kr.basic.member.Member"%>
<%@page import="java.util.ArrayList"%>
<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="./header.jsp" %>

<% ArrayList<Member> list =  MemberDAO.getInstance().getMemberList(); %>
<h1> 회원 전체 목록 </h1>

<table >
	<tr align="center">
		<td>번호</td>
		<td>아이디</td>
		<td>비밀번호</td>
		<td>이름</td>
		<td>나이</td>
		<td>이메일</td>
		<td>전화번호</td>
		<td>삭제</td>
	</tr>
<% 
	for(int i = 0; i<list.size();i++){%>
		<tr align="center">
		<td><%=list.get(i).getNum()%></td>
		<td><a href="./07_memberContent.jsp?num=<%=list.get(i).getNum()%>"><%=list.get(i).getId() %></a></td>
		<td><%=list.get(i).getPass() %></td>
		<td><%=list.get(i).getName() %></td>
		<td><%=list.get(i).getAge() %></td>
		<td><%=list.get(i).getEmail() %></td>
		<td><%=list.get(i).getPhone() %></td>
		<td><button onClick="location.href='./09_memberDeletePro2.jsp?num=<%=list.get(i).getNum()%>'">삭제</button></td>
	</tr>
	<%}

%>
</table>

<%@include file="./footer.jsp" %>
<%@page import="kr.basic.member.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 int cnt = MemberDAO.getInstance().deleteAMemberByNum(Integer.parseInt(request.getParameter("num")));

if(cnt != 0){
	%>
	<script>
		alert("회원 삭제 성공");
		location.href = "./01_memberlist.jsp";
	</script>
	<%
}else{
	%>
		<script>
			alert("회원 삭제 실패");
			location.href="./01_memberlist.jsp";
		</script>
	<%
}

%>
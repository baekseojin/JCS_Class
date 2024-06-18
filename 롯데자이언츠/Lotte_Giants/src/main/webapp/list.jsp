<%@page import="java.text.DecimalFormat"%>
<%@include file="db.jsp"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/>
<section> 
 <h2 style="text-align:center"><b>롯데자이언츠 선수 목록</b></h2><br>
 
 <form style="display:flex; align-items: center; justify-content:center; text-align: center">
<table border="1">

<tr>
	<td> 선수번호 </td>
	<td> 선수이름 </td>
	<td> 선수포지션 </td>
	<td> 선수등록일 </td>
	<td> 선수등급 </td>
	<td> 삭제 </td>
</tr>

<%
request.setCharacterEncoding("UTF-8");
 try
 {
	 String sql = "SELECT * FROM giants_player";
	 PreparedStatement pstmt = conn.prepareStatement(sql);
	 ResultSet rs = pstmt.executeQuery(sql);
	 while(rs.next())
	 {
		 String day=rs.getString(4);
		  day = day.substring(0,4) + "년" + day.substring(4,6) + "월" + day.substring(6,8) + "일";
%>
	  <tr>
			<td> <a href="modify.jsp?pid=<%=rs.getString(1) %>"> <%=rs.getString(1) %></a>  </td>
			<td> <%=rs.getString(2) %> </td>
			<td> <%=rs.getString(3) %> </td>
			<td> <%=day %> </td>
			<td> <%=rs.getString(5) %> </td>
			<td> 
			<a href = "action.jsp?pid=<%=rs.getString(1)%>&mode=delete">삭제 </a>
			</td>
	 </tr>
<% 
 	}
 }
 catch(Exception e)
 {
	 e.printStackTrace();
 }
%>

</table>

 </form>
</section>

<jsp:include page="footer.jsp"/>
</body>
</html>
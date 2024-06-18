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
 <h2 style="text-align:center"><b>강사조회</b></h2><br>
 
 <form style="display:flex; align-items: center; justify-content:center; text-align: center">
<table border="1" style="width:50%">

<tr>
	<td> 강사코드 </td>
	<td> 강사명 </td>
	<td> 강의명 </td>
	<td> 수강료 </td>
	<td> 강사자격취득일 </td>
</tr>

<%
request.setCharacterEncoding("UTF-8");
 try
 {
	 String sql = 
	"SELECT * FROM TBL_TEACHER_202201";
	 PreparedStatement pstmt = conn.prepareStatement(sql);
	 ResultSet rs = pstmt.executeQuery(sql);
	 while(rs.next())
	 {
	  String money=rs.getString(4);
	  money = "￦" + money.substring(0,3) + "," + money.substring(3,6);
	  
	  String day=rs.getString(5);
	  day = day.substring(0,4) + "년" + day.substring(4,6) + "월" + day.substring(6,8) + "일";
%>
	  <tr>
			<td> <%=rs.getString(1) %></td>
			<td> <%=rs.getString(2) %> </td>
			<td> <%=rs.getString(3) %> </td>
			<td> <%=money %> </td>
			<td> <%=day %> </td>
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
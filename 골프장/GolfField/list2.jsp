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
 <h2 style="text-align:center"><b>회원정보조회</b></h2><br>
 
 <form style="display:flex; align-items: center; justify-content:center; text-align: center">
<table border="1" style="width:50%">

<tr>
	<td> 수강월 </td>
	<td> 회원번호 </td>
	<td> 회원명 </td>
	<td> 강의명 </td>
	<td> 강의장소 </td>
	<td> 수강료 </td>
	<td> 등급 </td>
</tr>

<%
request.setCharacterEncoding("UTF-8");
 try
 {
	 String sql = 
	"SELECT regist_month, c.c_no, c_name, class_name, class_area, tuition, grade "+
	"FROM tbl_teacher_202201 t, tbl_member_202201 m, tbl_class_202201 c "+
	"WHERE t.teacher_code = c. teacher_code AND c.c_no = m.c_no";
	 PreparedStatement pstmt = conn.prepareStatement(sql);
	 ResultSet rs = pstmt.executeQuery(sql);
	 while(rs.next())
	 {
	  String money=rs.getString(6);
	  money = "￦" + money.substring(0,3) + "," + money.substring(3,6);
	  
	  String day=rs.getString(1);
	  day = day.substring(0,4) + "년" + day.substring(4,6) + "월";
%>
	  <tr>
			<td> <%=day %></td>
			<td> <%=rs.getString(2) %> </td>
			<td> <%=rs.getString(3) %> </td>
			<td> <%=rs.getString(4) %> </td>
			<td> <%=rs.getString(5) %> </td>
			<td> <%=money %> </td>
			<td> <%=rs.getString(7) %> </td>
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
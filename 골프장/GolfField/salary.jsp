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
 <h2 style="text-align:center"><b>강사매출현황</b></h2><br>
 
 <form style="display:flex; align-items: center; justify-content:center; text-align: center">
<table border="1" style="width:30%">

<tr>
	<td> 강사코드 </td>
	<td> 강의명 </td>
	<td> 강사명 </td>
	<td> 총매출 </td>
</tr>

<%
request.setCharacterEncoding("UTF-8");
 try
 {
	 String sql = 
	"SELECT t.teacher_code, class_name, teacher_name, sum(tuition) "+
	"FROM tbl_teacher_202201 t, tbl_class_202201 c "+
	"WHERE t.teacher_code = c. teacher_code " +
	"GROUP BY t.teacher_code, class_name, teacher_name "+
	"ORDER BY t.teacher_code";
	 PreparedStatement pstmt = conn.prepareStatement(sql);
	 ResultSet rs = pstmt.executeQuery(sql);
	 while(rs.next())
	 {
%>
	  <tr>
			<td> <%=rs.getString(1) %> </td>
			<td> <%=rs.getString(2) %> </td>
			<td style="text-align:right"> <%=rs.getString(3) %> </td>
			<td style="text-align:right"> <%=rs.getString(4) %> </td>
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
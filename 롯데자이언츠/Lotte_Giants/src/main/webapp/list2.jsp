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
 <h2 style="text-align:center"><b>롯데자이언츠 코치별 관리 선수 목록</b></h2><br>
 
 <form style="display:flex; align-items: center; justify-content:center; text-align: center">
<table border="1">

<tr>
	<td> 코치번호 </td>
	<td> 코치이름 </td>
	<td> 코치포지션 </td>
	<td> 관리선수 </td>
	<td> 관리선수연봉합계 </td>
	<td> 관리선수평균연봉 </td>
	<td> 관리선수최대연봉 </td>
	<td> 관리선수최소연봉 </td>
</tr>

<%
request.setCharacterEncoding("UTF-8");
 try
 {
	 String sql = "select cid,cname,cposition,count(pid), sum(pcost), avg(pcost), max(pcost), min(pcost) " +
			 "from giants_coach natural join giants_money " +
			 "group by cid, cname, cposition " +
			 "order by sum(pcost) desc";
	 PreparedStatement pstmt = conn.prepareStatement(sql);
	 ResultSet rs = pstmt.executeQuery(sql);
	 while(rs.next())
	 {
%>
	  <tr>
			<td> <%=rs.getString(1) %> </td>
			<td> <%=rs.getString(2) %> </td>
			<td> <%=rs.getString(3) %> </td>
			<td> <%=rs.getInt(4) %>명</td>
			<td> <%=rs.getInt(5) %> </td>
			<td> <%=rs.getInt(6) %> </td>
			<td> <%=rs.getInt(7) %> </td>
			<td> <%=rs.getInt(8) %> </td>
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
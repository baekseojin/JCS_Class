<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@include file="db.jsp"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>오디션 참가 신청</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2 style="text-align:center"><b>오디션 참가 신청</b></h2><br>
 <form style="display:flex; align-items: center; justify-content:center; text-align: center">
<table border="1">
	<tr>
		<td>참가번호</td>
		<td>참가자명</td>
		<td>총점</td>
		<td>평균</td>
		<td>등수</td>
	</tr>
<%
request.setCharacterEncoding("UTF-8");
try
{
	String sql = "select a.artist_id, artist_name, sum(score), round(avg(score),2), rank() over (order by avg(score) desc) " +
            "from tbl_artist_201905 a, tbl_point_201905 b " +
            "where a.artist_id=b.artist_id "+
            "group by a.artist_id, artist_name "+
            "order by avg(score) desc";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	while(rs.next()){
		String avgscore = rs.getString(4);
		if(!avgscore.contains("."))
		{
			avgscore+=".00";
		}
	%>
	<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=avgscore %></td>
		<td><%=rs.getString(5) %></td>
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
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>
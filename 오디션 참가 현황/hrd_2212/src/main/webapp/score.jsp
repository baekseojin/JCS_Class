<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="db.jsp"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>멘토 점수 조회</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h2 style="text-align:center"><b>참가자 목록 조회</b></h2><br>
 <form style="display:flex; align-items: center; justify-content:center; text-align: center">
<table border="1">
	<tr>
		<td>채점번호</td>
		<td>참가번호</td>
		<td>참가자명</td>
		<td>생년월일</td>
		<td>점수</td>
		<td>평점</td>
		<td>멘토명</td>
	</tr>
<%
request.setCharacterEncoding("UTF-8");
try
{
	String sql = "select serial_no,a.artist_id,artist_name,birth,score,mento_name " +
            "from tbl_point_201905 a,tbl_artist_201905 b, tbl_mento_201905 c " +
            "where a.artist_id = b.artist_id and "+
            "a.mento_id = c.mento_id " +
            "order by serial_no";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery(sql);
	while(rs.next()){
		String date = rs.getString(4);
		int score = rs.getInt(5);
		String grade = score>=90?"A":score>=80?"B":score>=70?"C":score>=60?"D":"F";
%>
	<tr>
		<td><%=rs.getString(1) %></td>
		<td><%=rs.getString(2) %></td>
		<td><%=rs.getString(3) %></td>
		<td><%=date.substring(0, 4)%>년<%=date.substring(4, 6)%>월<%=date.substring(6, 8)%>일</td>
		<td><%=score %></td>
		<td><%=grade %></td>
		<td><%=rs.getString(6) %></td>
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
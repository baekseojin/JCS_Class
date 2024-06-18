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
 <h2 style="text-align:center"><b>차량 조회</b></h2><br>
 
 <form style="display:flex; align-items: center; justify-content:center; text-align: center">
<table border="1">

<tr>
	<td> 차량번호 </td>
	<td> 차량종류 </td>
	<td> 소유자이름 </td>
	<td> 주차위치 </td>
	<td> 입차시간 </td>
	<td> 출차시간 </td>
</tr>

<%
request.setCharacterEncoding("UTF-8");
String car_numberr = request.getParameter("car_numberr");
car_numberr="'" + car_numberr + "'";
 try
 {
	 String sql = "SELECT * FROM TBL_CAR_202301 natural join TBL_PARKING_202301 where car_number= " +car_numberr;
	 PreparedStatement pstmt = conn.prepareStatement(sql);
	 ResultSet rs = pstmt.executeQuery();
	 while(rs.next())
	 {
%>
	  <tr>
			<td> <%=rs.getString(1) %> </td>
			<td> <%=rs.getString(2) %> </td>
			<td> <%=rs.getString(3) %> </td>
			<td> <%=rs.getString(4) %> </td>
			<td> <%=rs.getString(5) %> </td>
			<td> <%=rs.getString(6) %> </td>	
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
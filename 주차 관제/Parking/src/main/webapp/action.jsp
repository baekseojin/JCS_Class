<%@page import="java.sql.*"%>
<%@include file="db.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>action</title>
</head>
<body>

<%
request.setCharacterEncoding("UTF-8");
String mode =request.getParameter("mode");
String car_number = request.getParameter("car_number");
String owner_name = request.getParameter("owner_name");
String location = request.getParameter("location");
String input_time = request.getParameter("input_time");
String output_time = request.getParameter("output_time");
String cno = request.getParameter("cno");
String blank = " ";
String car_name=" ";
try
{
	String sql=" ";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	switch(mode)
	{
		case "input":
		    sql = String.format("insert into tbl_parking_202301 values('%s', '%s', '%s', '%s')",car_number,location,input_time,blank);
		    pstmt.executeUpdate(sql);
%>
				<jsp:forward page="list.jsp"></jsp:forward>
<% 
			
			break;
		case "output":
			sql = String.format("update tbl_parking_202301 set departure_time='%s' where car_number = '%s'",output_time, cno);
		    pstmt.executeUpdate(sql);
%>
			    <jsp:forward page="list.jsp"></jsp:forward>
<%
			    break;
	}
}

catch(Exception e)
{
	e.printStackTrace();
}
%>

</body>
</html>
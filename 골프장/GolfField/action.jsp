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
String month = request.getParameter("month");
String cno = request.getParameter("cno");
String place = request.getParameter("place");
String money = request.getParameter("money");
String lecturer = request.getParameter("lecturer");
try
{
	String sql=" ";
	PreparedStatement pstmt = conn.prepareStatement(sql);
			sql = String.format("insert into tbl_class_202201 values('%s', '%s', '%s', '%d', '%s')"
					,month,cno,place,Integer.parseInt(money),lecturer);
		    pstmt.executeUpdate(sql);
%>
				<jsp:forward page="list2.jsp"></jsp:forward>
<% 
		
}
catch(Exception e)
{
	e.printStackTrace();
}
%>

</body>
</html>
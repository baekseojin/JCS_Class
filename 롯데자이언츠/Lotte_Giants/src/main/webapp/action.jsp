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
String pid = request.getParameter("pid");
String pname = request.getParameter("pname");
String pposition = request.getParameter("pposition");
String pdate = request.getParameter("pdate");
String pgrade = request.getParameter("pgrade");
try
{
	String sql=" ";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	switch(mode)
	{
		case "insert":
			sql = String.format("insert into giants_player values('%d', '%s', '%s', '%s', '%s')"
					,Integer.parseInt(pid),pname,pposition,pdate,pgrade);
		    pstmt.executeUpdate(sql);
%>
				<jsp:forward page="list.jsp"></jsp:forward>
<% 
			
			break;
		case "modify":
			sql = String.format("update giants_player set pname='%s', pposition='%s', pdate='%s', pgrade='%s' where pid = '%d'",pname,pposition,pdate,pgrade,Integer.parseInt(pid));
		    pstmt.executeUpdate(sql);
%>
			    <jsp:forward page="list.jsp"></jsp:forward>
<%
			    break;
		case "delete" :
			sql=String.format("DELETE FROM giants_player WHERE pid='%d'",Integer.parseInt(pid));
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
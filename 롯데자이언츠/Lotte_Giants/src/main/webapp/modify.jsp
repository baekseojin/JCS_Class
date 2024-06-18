<%@include file="db.jsp"%>
<%@page import="java.text.*"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>modify</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/> 
<script type="text/javascript" src="check.js"></script>

<section>
 <h2 style="text-align:center"><b>선수 정보 수정</b></h2><br>

<form method = "post" action="action.jsp" name ="frm" style="display:flex; align-items: center; justify-content:center;
 text-align: center">
 <input type="hidden" name= "mode" value="modify">
 <table border="1" style ="text-align:center">
 
 <% 
    request.setCharacterEncoding("UTF-8");
	String pid= request.getParameter("pid");
	String pname="";
	String pposition="";
	String pdate="";
	String pgrade="";
 	try
 	{
 		String sql = "SELECT * FROM giants_player WHERE pid = " +pid;
 		PreparedStatement pstmt = conn.prepareStatement(sql);
 		ResultSet rs = pstmt.executeQuery(sql);
	    rs.next();
	    pname = rs.getString("pname");
	    pposition = rs.getString("pposition");
	    pdate = rs.getString("pdate");
	    pgrade = rs.getString("pgrade");
 	}
 	catch(Exception e)
 	{
 		e.printStackTrace();
 	}
 %>
 
 <tr>
 	<td> 선수번호 </td>
 	<td> <input type="text"  name="pid" style="width: 100%" value="<%=pid %>" readonly></td>
 </tr>
 
 <tr>
 	<td> 선수이름 </td>
 	<td> <input type="text"  name="pname" style="width: 100%" value="<%=pname %>"></td>
 </tr>
  
 <tr>
 	<td> 선수포지션 </td>
 	<td> <select name="pposition" style="width: 100%">
 	<option value=""> 포지션선택 </option>
 	<option value="투수" <% if(pposition.equals("투수")) out.println("selected"); %>> 투수 </option>
 	<option value="내야수" <% if(pposition.equals("내야수")) out.println("selected"); %>> 내야수 </option>
 	<option value="외야수" <% if(pposition.equals("외야수")) out.println("selected"); %>> 외야수 </option>
 	<option value="포수" <% if(pposition.equals("포수")) out.println("selected"); %>> 포수 </option>
 	</select>
 	</td>
 </tr>
 
 <tr>
 	<td> 선수등록일 </td>
 	<td> <input type="text"  name="pdate" style="width: 100%" value="<%=pdate %>"></td>
 </tr>
 
 <tr>
    <td> 선수등급</td>
 	<td> 
 	<input type="radio" name="pgrade" value="S"
 	<% if(pgrade.equals("S")) out.println("checked"); %>> S
 	<input type="radio" name="pgrade" value="A"
 	<% if(pgrade.equals("A")) out.println("checked"); %>> A
 	<input type="radio" name="pgrade" value="B"
 	<% if(pgrade.equals("B")) out.println("checked"); %>> B
 	<input type="radio" name="pgrade" value="C"
 	<% if(pgrade.equals("C")) out.println("checked"); %>> C
 	</td>
 </tr>
  
 <tr>
 	<td colspan="2">
 	<input type="button" value="수정" onclick = "return modify()">
 	<input type="button" value="취소" onclick = "return resettt()">
 	</td>
 </tr>
 </table>
</form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>
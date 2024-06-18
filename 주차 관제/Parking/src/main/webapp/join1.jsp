<%@include file="db.jsp"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
<link href="style.css" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"/>
<script type="text/javascript" src="check.js"> </script>

<section> 
 <h2 style="text-align:center"><b>차량출차</b></h2><br>
 
 <form method = "post" action="action.jsp" name="frmmm" style="display:flex; align-items: center; justify-content:center;
 text-align:center">
 <input type="hidden" name= "mode" value="output">
 <table border="1">
<%
request.setCharacterEncoding("UTF-8");
%>
 <tr>
 	<td> 차량번호</td>
 	<td style="text-align:left">
 	<select name="cno" onchange="get(this.value)" style="width:150px">
 	<option value=""> 차량선택</option>
 	<option value="11가1111"> 11가1111 </option>
 	</select>
 	</td>
 </tr>
 <tr>
 	<td> 소유자이름</td>
 	<td style="text-align:left"> <input type="text"  name="name"  value="" readonly></td>
 </tr>
  <tr>
 	<td> 출차시간</td>
 	<td style ="text-align:left"> <input type="text"  name="output_time">예)22:03</td>
 </tr>
 <tr>
 	<td colspan="2">
 	<input type="button" value="출차등록" onclick="return joinCheck2()">
 	<input type="button" value="다시쓰기" onclick="return resettt()">
 	</td>
 </tr>
 </table>
 
 </form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>
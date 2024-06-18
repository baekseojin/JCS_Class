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
 <h2 style="text-align:center"><b>차량입차</b></h2><br>
 
 <form method = "post" action="action.jsp" name="frm" style="display:flex; align-items: center; justify-content:center;
 text-align:center">
 
<input type="hidden" name= "mode" value="input">
 <table border="1">
<%
request.setCharacterEncoding("UTF-8");
%>
 <tr>
 	<td> 차량번호</td>
 	<td style ="text-align:left"> <input type="text"  name="car_number" style ="text-align:left">예)22가1111</td>
 </tr>
 <tr>
 	<td> 소유자이름</td>
 	<td style ="text-align:left"> <input type="text"  name="owner_name" style ="text-align:left">예)백선수</td>
 </tr>
 <tr>
 	<td> 주차위치선택</td>
 	<td> <input type="radio"  name="location" value="A001"> A001
 	<input type="radio"  name="location" value="A002"> A002
 	<input type="radio"  name="location" value="A003"> A003
 	<input type="radio"  name="location" value="A004"> A004
 	 <input type="radio"  name="location" value="A005"> A005
 	</td>
 </tr>
  <tr>
 	<td> 입차시간</td>
 	<td style ="text-align:left"> <input type="text"  name="input_time">예)22:22</td>
 </tr>
 <tr>
 	<td colspan="2">
 	<input type="button" value="입차등록" onclick="return joinCheck()">
 	<input type="button" value="다시쓰기" onclick="return resett()">
 	</td>
 </tr>
 </table>
 
 </form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>
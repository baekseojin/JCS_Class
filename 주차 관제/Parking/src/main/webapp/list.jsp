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
 <h2 style="text-align:center"><b>차량조회</b></h2><br>
 
 <form method = "post" action="list2.jsp" name="frmm" style="display:flex; align-items: center; justify-content:center">
 <table border="1">
 <tr>
 	<td> 차량번호를 입력하시오.</td>
 	<td style ="text-align:left"> <input type="text"  name="car_numberr" style ="text-align:left"></td>
 </tr>
 <tr>
 	<td colspan="2">
 	<input type="button" value="차량조회" onclick="return joinCheck1()">
 	<input type="button" value="홈으로" onclick="return home()">
 	</td>
 </tr>
 </table>
 
 </form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>
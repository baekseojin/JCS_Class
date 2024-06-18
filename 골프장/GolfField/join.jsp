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
 <h2 style="text-align:center"><b>수강신청</b></h2><br>
 
 <form method = "post" action="action.jsp" name="frm" style="display:flex; align-items: center; justify-content:center">
 <table border="1" style ="width:40%; height:40%; text-align:center">
 <tr>
 	<td> 수강월 </td>
 	<td style="text-align:left"> <input type="text"  name="month" style="width:30%;">2022년3월 예)202203</td>
 </tr>
 <tr>
 	<td> 회원명</td>
 	<td style="text-align:left"> <select name="cno" onchange="get(this.value)" style="width: 30%">
 	<option value=""> 회원명 </option>
 	<option value="10001"> 홍길동 </option>
 	<option value="10002"> 장발장 </option>
 	<option value="10003"> 임꺽정 </option>
 	<option value="20001"> 성춘향 </option>
 	<option value="20002"> 이몽룡 </option>
 	</select>
 	</td>
 </tr>
 <tr>
 	<td> 회원번호</td>
 	<td style="text-align:left"> <input type="text"  name="number" style="width: 30%" value="" readonly></td>
 </tr>
 <tr>
 	<td> 강의장소</td>
 	<td style="text-align:left"> <select name="place" style="width: 30%">
 	<option value=""> 강의장소 </option>
 	<option value="서울본원"> 서울본원 </option>
 	<option value="성남분원"> 성남분원 </option>
 	<option value="대전분원"> 대전분원 </option>
 	<option value="부산분원"> 부산분원 </option>
 	<option value="대구분원"> 대구분원 </option>
 	</select>
 	</td>
 </tr>
  <tr>
 	<td> 강의명</td>
 	<td style="text-align:left"> <select name="lecturer" onchange ="make(this.value)" style="width: 30%">
 	<option value=""> 강의선택 </option>
 	<option value="100"> 초급반 </option>
 	<option value="200"> 중급반 </option>
 	<option value="300"> 고급반 </option>
 	<option value="400"> 심화반 </option>
 	</select>
 	</td>
 </tr>
 <tr>
 	<td> 수강료</td>
 	<td style="text-align:left"> <input type="text" name="money" style="width: 30%" readonly>원</td>
 </tr>
 <tr>
 	<td colspan="2">
 	<input type="button" value="수강신청" onclick="return joinCheck()">
 	<input type="reset" value="다시쓰기" onclick="return res()">
 	</td>
 </tr>
 </table>
 
 </form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>
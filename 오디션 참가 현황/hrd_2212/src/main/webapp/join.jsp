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
 <h2 style="text-align:center"><b>오디션 등록</b></h2><br>
 
 <form method = "post" action="action.jsp" name="frm" style="display:flex; align-items: center; justify-content:center;">
 <table border="1">
<tr>
		<td style="text-align:center">참가번호</td>
		<td> <input type="text" name="id"> *참가번호는(A000) 4자리입니다.</td>
	</tr>
	<tr>
		<td style="text-align:center">참가자명</td>
		<td> <input type="text" name="name"></td>
	</tr>
	<tr>
		<td style="text-align:center">생년월일</td>
		<td> <input type="text" name="ybirth">년<input type="text" name="mbirth">월<input type="text" name="dbirth">일</td>
	</tr>
	<tr>
		<td style="text-align:center">성별</td>
		<td>
			<input type="radio" name="gender" value="M"> 남성
			<input type="radio" name="gender" value="F"> 여성
		</td>
	</tr>
	<tr>
		<td style="text-align:center">특기</td>
		<td>
			<select name="talent">
				<option value="">특기선택
				<option value="1">[1]보컬
				<option value="2">[2]댄스
				<option value="3">[3]랩
			</select>
		</td>
	</tr>
	<tr>
		<td style="text-align:center">소속사</td>
		<td> <input type="text" name="agency"></td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center">
			<input type="button" value="오디션 등록" onclick="return joinCheck()">
			<input type="reset" value="다시 쓰기" onclick="return Reset()">
		</td>
	</tr>
 </table>
 
 </form>
</section>
<jsp:include page="footer.jsp"/>
</body>
</html>
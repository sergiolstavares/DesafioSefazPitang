<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ page import="com.desafioSefazPitang.controller.LoginController"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
	href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet"/>
<script type="text/javascript" src="http://code.jquery.com.jquery-1.7.1.js"></script>
<script type="tex/javascript" src="http://www.godtur.no/godtur/js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Logar</title>
</head>
<body>
	
	<form action="LoginController" method="POST" name="loginUser">
	<table>
		
		<tr>
			<td>Email:</td>
			<td><input type="text" name="loginEmail" value="<c:out value="${login.loginEmail}"/>"/></td>
		</tr>
		
		<tr>
			<td>Senha:</td>
			<td><input type="text" name="loginPassword" value="<c:out value="${login.loginPassword}"/>"/></td>
		</tr>
		
		<tr>
			<td colspan="2">
				<input type="submit" value="Logar" />
			</td>
		</tr>
		
		
		
	</table>
</form>

</body>
</html>
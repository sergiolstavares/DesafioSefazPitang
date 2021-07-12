<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
	href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet"/>
<script type="text/javascript" src="http://code.jquery.com.jquery-1.7.1.js"></script>
<script type="tex/javascript" src="http://www.godtur.no/godtur/js/jquery-ui-1.8.18.custom.min.js"></script>
	
<title>Adicionar Usuário</title>
</head>
<body>
	<script>
		$(function{
			$('input[name=dob]').datepicker();
		});
	</script>
	
	
	<form action="UserController" method="POST" name="frmAddUser">
	<table>
	
		<tr>
			<td>User ID:</td>
			<td><input type="text" readonly="readonly" name="userId" value="<c:out value="${user.userId}"/>"/></td>
		</tr>
		<tr>
			<td>Nome:</td>
			<td><input type="text" name="name" value="<c:out value="${user.name}"/>"/></td>
		</tr>
		
		<tr>
			<td>Email:</td>
			<td><input type="email" name="email" value="<c:out value="${user.email}"/>"/></td>
		</tr>
		
		<tr>
			<td>Senha:</td>
			<td><input type="password" name="password" value="<c:out value="${user.password}"/>"/></td>
		</tr>
		<tr>
			<td>Telefone 1:</td>
			<td><input type="text" name="phone1" value="<c:out value="${phone.number}"/>"/></td>
			
			<td>Tipo do telefone:</td>
			<td><input type="text" name="typePhone1" value="<c:out value="${phone.typePhone}"/>"/></td>
		</tr>
		
	
		<tr>
			<td colspan="2">
				<input type="submit" value="Adicionar usuario" />
			</td>
		</tr>
		
	</table>
</form>

	
</body>
</html>
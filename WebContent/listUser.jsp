<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
	href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet"/>
<script type="text/javascript" src="http://code.jquery.com.jquery-1.7.1.js"></script>
<script type="tex/javascript" src="http://www.godtur.no/godtur/js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Lista de Usuarios</title>
</head>
<body>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<h1>Listagem de usuarios</h1>
	
	<table border = "1">
		<tr><th>ID</th>
			<th>Nome</th>
			<th>Email</th>
			<th>Senha</th>
			<th>Editar</th>
			<th>Excluir</th>
		</tr>
		<tbody>
			<c:forEach items="${users}" var="user">
				<tr>
					<td><c:out value="${user.userId}"/></td>
					<td><c:out value="${user.name}"/></td>
					<td><c:out value="${user.email}"/></td>
					<td><c:out value="${user.password}"/></td>
					<td><a href="UserController?action=edit&userId=<c:out value="${user.userId}"/>">Editar</a></td>
					<td><a href="UserController?action=delete&userId=<c:out value="${user.userId}"/>">Deletar</a></td>
				</tr>		
			</c:forEach>
		</tbody>
	</table>
	<p><a href="UserController?action=insert">Adicionar usu�rio</a></p>
</body>
</html>
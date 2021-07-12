<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link type="text/css"
	href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet"/>
<script type="text/javascript" src="http://code.jquery.com.jquery-1.7.1.js"></script>
<script type="tex/javascript" src="http://www.godtur.no/godtur/js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Lista de Usuarios</title>
</head>
<body>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	
	
	<div class= "container">
	<h1>Listagem de usuarios</h1>
	<table class="table table-striped table-hover">
		<thead>
		<tr><th>ID</th>
			<th>Nome</th>
			<th>Email</th>
			<th>Senha</th>
			<th>Telefones</th>
			<th>Editar</th>
			<th>Excluir</th>
		</tr>
		</thead>
		<tbody>
			<c:forEach items="${users}" var="user">
				<tr>
					<td><c:out value="${user.userId}"/></td>
					<td><c:out value="${user.name}"/></td>
					<td><c:out value="${user.email}"/></td>
					<td><c:out value="${user.password}"/></td>
					<td><a href="UserController?action=listPhones&userId=<c:out value="${user.userId}"/>"> <button type="button" class="btn btn-primary">Telefones</button></a></td>
					<td><a href="UserController?action=edit&userId=<c:out value="${user.userId}"/>"> <button type="button" class="btn btn-primary">Editar</button></a></td>
					<td><a href="UserController?action=delete&userId=<c:out value="${user.userId}"/>"><button type="button" class="btn btn-primary">Deletar</button></a></td>
				</tr>		
			</c:forEach>
		</tbody>
	</table>
	<p><a href="UserController?action=insert">Adicionar usuário</a></p>
	</div>
	
</body>
</html>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
	href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet"/>
	
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script type="text/javascript" src="http://code.jquery.com.jquery-1.7.1.js"></script>
<script type="tex/javascript" src="http://www.godtur.no/godtur/js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Telefones</title>
</head>
<body>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


	
	
	<div class= "container">
	<h1>Telefones do Usu�rio</h1>
	<table class="table table-striped table-hover">
		<thead>
		<tr>
			<th>Numero</th>
			<th>Tipo</th>
		</tr>
		</thead>
		<tbody>
			<c:forEach items="${phones}" var="phone">
				<tr>
					<td><c:out value="${phone.number}"/></td>
					<td><c:out value="${phone.typePhone}"/></td>
				</tr>		
			</c:forEach>
		</tbody>
	</table>
	<a href="UserController?action=listUser"><button type="button" class="btn btn-primary">Usuarios</button></a> 
	</div>
</body>
</html>
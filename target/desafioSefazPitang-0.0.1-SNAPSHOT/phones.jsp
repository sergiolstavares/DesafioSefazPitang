<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link type="text/css"
	href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet"/>
<script type="text/javascript" src="http://code.jquery.com.jquery-1.7.1.js"></script>
<script type="tex/javascript" src="http://www.godtur.no/godtur/js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Telefones</title>
</head>
<body>
	
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

	<h1>Telefones do usu�rio</h1>
	
	<table border = "1">
		<tr><th>Numero</th>
			<th>Tipo</th>
		</tr>
		<tbody>
			<c:forEach items="${phone}" var="phones">
				<tr>
					<td><c:out value="${phone.number}"/></td>
					<td><c:out value="${phone.typePhone}"/></td>
				</tr>		
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link type="text/css"
	href="css/ui-lightness/jquery-ui-1.8.18.custom.css" rel="stylesheet"/>
	
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<script type="text/javascript" src="http://code.jquery.com.jquery-1.7.1.js"></script>
<script type="tex/javascript" src="http://www.godtur.no/godtur/js/jquery-ui-1.8.18.custom.min.js"></script>
<title>Logar</title>
</head>
<body>

	<div class = "container">
	<h2>Login</h2>
	<form action="LoginController" method="POST" name="loginUser">
		  <div class="mb-3">
		    <label for="exampleInputEmail1" class="form-label">Email</label>
		    <input type="email" class="form-control" name = "loginEmail" id="loginEmail" aria-describedby=loginEmail required="required">
		  </div>
		  <div class="mb-3">
		    <label for="exampleInputPassword1" class="form-label">Password</label>
		    <input type="password" class="form-control" name="loginPassword" id="loginPassword" required="required">
		  </div>
		  
		  <button type="submit" class="btn btn-primary">Logar</button> <a href="/desafioSefazPitang/user.jsp"><button type="button" class="btn btn-primary">Cadastre-se</button></a> 
		  
		</form>
	</div>



</body>
</html>
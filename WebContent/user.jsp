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
	
<title>Adicionar Usuário</title>
</head>
<body>
	
	
	<div class="container">
		<h2>Cadastre-se</h2>
		<form action="UserController" method="POST" name="frmAddUser">
				
				<div class="mb-3">
			    <input type="hidden" class="form-control" name="userId" value="<c:out value="${user.userId}"/>" id= "name">
			  </div>
				
			  	
			  <div class="mb-3">
			    <label for="exampleInputEmail1" class="form-label">Nome</label>
			    <input type="text" class="form-control" name="name" value="<c:out value="${user.name}"/>" id= "name">
			  </div>
			  <div class="mb-3">
			    <label for="exampleInputEmail1" class="form-label">Email</label>
			    <input type="email" class="form-control" name="email" value="<c:out value="${user.email}"/>" id="email" aria-describedby="emailHelp">
			    
			  </div>
			  <div class="mb-3">
			    <label for="exampleInputPassword1" class="form-label">Senha</label>
			    <input type="password" class="form-control" name = "password" value="<c:out value="${user.password}"/>" id="password">
			  </div>
			  
			  <div class="mb-3">
			   
			    <label for="exampleInputEmail1" class="form-label">Telefone 1</label>
			    
			    <input type="text" class="form-control" name="phone1" id="phone1" placeholder="(xx)xxxxx-xxxx" aria-describedby="emailHelp">
			     <p></p>
			    <input type="text" class="form-control" name="typePhone1" id="typePhone1" placeholder="Tipo do Telefone" aria-describedby="emailHelp">
			    <p></p>
			    <label for="exampleInputEmail1" class="form-label">Telefone 2</label>
			    
			    <input type="text" class="form-control" name="phone2" id="phone2" placeholder="(xx)xxxxx-xxxx" aria-describedby="emailHelp"> 
			    <p></p>
			    <input type="text" class="form-control" name="typePhone2" id="typePhone2" placeholder="Tipo do Telefone" aria-describedby="emailHelp">
			    
			  </div>
			  
			 
			 
			  <button type="submit" class="btn btn-primary">Cadastrar</button>
	 
	  </form>
	  
	</div>
	



	
</body>
</html>
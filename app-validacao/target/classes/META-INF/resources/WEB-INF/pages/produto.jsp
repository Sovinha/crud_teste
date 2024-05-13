<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Form Produtos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-expand-lg bg-body-tertiary">
  <div class="container-fluid">
    <a class="navbar-brand" href="/produtos">Aplicação</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/produtos">Cadastrar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/listar">Listar</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="/atualizar">Atualizar</a>
        </li>
       </ul>
      </div>
	</div>
</nav>	
	
	<div class="row justify-content-center mt-3">
	<div class="col-md-4">
	<form:form method="post" modelAttribute="produto">
	<fieldset>
		<legend>Produtos</legend>
		<div class="mb-3">
		<label class="form-label" for="nome" >Nome: </label>
		<input class="form-control" type="text" id="nome" name="nome" placeholder="Nome"/> 
		<span style="color:red"><form:errors path="nome"/></span>
		</div>
		<div class="mb-3">
		<label class="form-label" for="qtde">Quantidade: </label>
		<input class="form-control" type="number" min="1" id="qtde" name="qtde" placeholder="Quantidade"/> 
		<span style="color:red"><form:errors path="qtde"/></span> 
		</div>
		<div class="mb-3">
		<label class="form-label" for="preco">Preço: </label>
		<input class="form-control" type="number" step="0.01" id="preco" name="preco" placeholder="Preço"/>
		<span style="color:red"><form:errors path="preco"/></span> 
		</div>
		<div class="mb-3"> 
		<label class="form-label" for="descricao">Descrição: </label>
		<textarea class="form-control" rows="13" cols="5" name="descricao" id="descricao"></textarea>  
		</div>
		
		<button class="btn btn-primary">Cadastrar</button>
		
	</fieldset>
	</form:form>
	</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
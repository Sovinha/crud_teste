<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Listar Produtos</title>
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
	<div class="col-md-8">
	<table class="table">
		<thead>
			<tr>
				<th scope="col">Id</th>
				<th scope="col">Nome</th>
				<th scope="col">Quantidade</th>
				<th scope="col">Preço</th>
				<th scope="col">Descrição</th>
				<th scope="col">Operações</th>
			</tr>
		</thead>
		<tbody>
                <c:forEach items="${produtos}" var="prod">
                    <tr>
                        <td>${prod.id}</td>
                        <td>${prod.nome}</td>
                        <td>${prod.qtde }</td>
                        <td>${prod.preco }</td>
                        <td>${prod.descricao }</td>
                        <td>
                            <a href="/produtos/deletar/${prod.id}">Deletar</a>
                            <a href="/produtos/atualizar/${prod.id}">Atualizar</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
	</table>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>
</html>
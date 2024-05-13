<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Atualizar Produto</title>
</head>
<body>
    <h1>Atualizar Produto</h1>
    <form action="/produtos/atualizar" method="post">
        <input type="hidden" name="id" value="${produto.id}">
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="nome" value="${produto.nome}" required><br>
        <label for="qtde">Quantidade:</label>
        <input type="number" id="qtde" name="qtde" value="${produto.qtde}" required><br>
        <label for="preco">Preço:</label>
        <input type="number" id="preco" name="preco" value="${produto.preco}" required><br>
        <label for="descricao">Descrição:</label><br>
        <textarea id="descricao" name="descricao" rows="4" cols="50" required>${produto.descricao}</textarea><br>
        <button type="submit">Atualizar</button>
    </form>
</body>
</html>

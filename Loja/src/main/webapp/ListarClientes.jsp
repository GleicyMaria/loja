<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<link rel="stylesheet" href="/css/loja.css" />
    <link rel="stylesheet" href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" />
		<meta charset="ISO-8859-1">
		<title>Listagem de cliente</title>
	</head>
	<body>
	<div class="container">
		<h3>Lista de Clientes</h3>
		<ul>
			<c:forEach var="cliente" items="${clientes}"> 
				<li>${cliente.nome}</li>
				<a href="AlterarClienteServlet?id=${cliente.id}" type="submit">Editar</a>
				<a href="DeletarClienteServlet?id=${cliente.id}" type="submit">Excluir</a>
			</c:forEach>
		</ul>
		</div>
	</body>
</html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/loja.css" />
<link rel="stylesheet" href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div class="container">
 <h3>Lista de Produtos</h3>
		<ul>
			<c:forEach var="produto" items="${produtos}"> 
				<li>${produto.name}</li>
				<a href="AlterarProdutoServlet?id=${produto.id}" type="submit">Editar</a>
				<a href="DeletarClienteServlet?id=${produto.id}" type="submit">Excluir</a>
			</c:forEach>
			</ul>
			 </div>
</body>
</html>
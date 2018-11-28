<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/css/loja.css" />
<link rel="stylesheet" href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" />
<title>Alterar Produto</title>
</head>
<body>
 <div class="container">
<h1>FORMULARIO ALTERAR PRODUTOS</h1>
	<form action="AlterarProdutoServlet" method="post">
		<input type="hidden" name="id" value="${produto.id}">
		Nome:<br> <input type="text" name="nome" value="${produto.nome}"><br>
		Email:<br> <input type="text" name="email" value="${produto.email}"><br>
		Descrição:<br> <input type="text" name="descricao value="${produto.descricao}"><br>
		Status:<br> <input type="text" name="status" value="${produto.status}"><br>
		<input  class="btn btn-primary" type="submit" value="Submit"><br>
	</form>
	</div>
</body>
</html>
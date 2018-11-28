<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/css/loja.css" />
<link rel="stylesheet" href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <div class="container">
	<h1>FORMULARIO ALTERAR CLIENTE</h1>
	<form action="AlterarClienteServlet" method="post">
		<input type="hidden" name="id" value="${cliente.id}">
		Nome:<br> <input type="text" name="nome" value="${cliente.nome}"><br>
		CPF:<br> <input type="text" name="cpf" value="${cliente.cpf}"><br>
		Logradouro:<br> <input type="text" name="logradouro" value="${cliente.logradouro}"><br>
		Numero:<br> <input type="text" name="numero" value="${cliente.numero}"><br>
		Bairro:<br> <input type="text" name="bairro" value="${cliente.bairro}"><br>
		Cidade:<br> <input type="text" name="cidade" value="${cliente.cidade}"><br>
		Estado:<br> <input type="text" name="estado" value="${cliente.estado}"><br>
		<input  class="btn btn-primary" type="submit" value="Submit"><br>
	</form>
</div>
</body>
</html>
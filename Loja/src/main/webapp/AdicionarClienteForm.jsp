<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="/css/loja.css" />
<link rel="stylesheet" href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>
 <div class="container">
	<h1>FORMULARIO ADICIONAR CLIENTE</h1>
	<form action="AdicionarClienteServlet" method="post">
		Nome:<br> <input type="text" name="nome"><br>
		CPF:<br> <input type="text" name="cpf"><br>
		Logradouro:<br> <input type="text" name="logradouro"><br>
		Numero:<br> <input type="text" name="numero"><br>
		Bairro:<br> <input type="text" name="bairro"><br>
		Cidade:<br> <input type="text" name="cidade"><br>
		Estado:<br> <input type="text" name="estado"><br>
		<input class="btn btn-primary" type="submit" value="Submit"><br>
	</form>
</div>
</body>
</html>
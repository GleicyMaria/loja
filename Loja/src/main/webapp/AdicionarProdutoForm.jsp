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
	<h1>FORMULARIO ADICIONAR PRODUTO</h1>
	<form action="AdicionarProdutoServlet" method="post">
		Nome:<br> <input type="text" name="nome"><br>
		Status:<br> <input type="text" name="status"><br>
		E-mail:<br> <input type="text" name="email"><br>
		Descri��o:<br> <input type="text" name="description"><br>
		<input class="btn btn-primary" type="submit" value="Submit"><br>
	</form>
</div>
</body>
</html>
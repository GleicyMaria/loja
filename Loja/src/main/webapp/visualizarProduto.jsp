<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="/css/loja.css" />
<link rel="stylesheet" href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>
 <div class="container">
    <ul>
     <li>${produto.name}</li>
     <li>${produto.status}</li>
     <li>${produto.description}</li>
     <li>${produto.email}</li>
    </ul>
    </div>
 </body>
</html>
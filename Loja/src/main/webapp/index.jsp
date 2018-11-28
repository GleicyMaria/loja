<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>

<link rel="stylesheet" href="/css/loja.css" />
<link rel="stylesheet" href="/webjars/bootstrap/4.1.3/css/bootstrap.min.css" />

<title>Loja Exemplo</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="#">Loja</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="index.jsp">Home
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="AdicionarProdutoForm.jsp">Adicionar produto</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="AdicionarClienteForm.jsp">Adicionar Cliente</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="login.jsp">Login</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    
   
     <div class="container">

      <!-- Jumbotron Header -->
      <header class="jumbotron my-4">
        <h1 class="display-3">Loja em Construção</h1>
        <p class="lead"></p>
        <a href="Test.jsp" class="btn btn-primary btn-lg">Teste</a>
      </header>

      <!-- Page Features -->
      <div class="row text-center">

        <c:forEach var="produto" items="${produtos}"> 
        <div class="col-lg-3 col-md-6 mb-4">
          <div class="card">
            
            <div class="card-body">
              <h4 class="card-title">${produto.name}</h4>
              <p class="card-text">${produto.description }</p>
            </div>
            <div class="card-footer">
              <a href="ObterProdutosServlet?id=${produto.id}" class="btn btn-primary"> Mais informações ...</a>
            </div>
          </div>
        </div>
       </c:forEach>
       
       

        

      </div>
      <!-- /.row -->

    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Copyright &copy; Your Website 2018</p>
      </div>
      <!-- /.container -->
    </footer>


    <footer class="text-muted">
      <div class="container">
        <p class="float-right">
          <a href="#">Voltar para o Topo</a>
        </p>
        <p>Loja Exemplo é &copy; UCSal!</p>
      </div>
    </footer>
     
<script src="/webjars/jquery/3.3.1-1/jquery.min.js"></script>
<script src="/webjars/popper.js/1.14.4/umd/popper.min.js"></script>
<script src="/webjars/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="/webjars/holderjs/2.5.2/holder.min.js"></script>


</body>
</html>
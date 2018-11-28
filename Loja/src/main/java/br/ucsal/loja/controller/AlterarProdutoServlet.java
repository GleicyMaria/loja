package br.ucsal.loja.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.ucsal.loja.dao.ProdutoDAO;
import br.ucsal.loja.model.Produto;

/**
 *  Author : Gleicy Maria
 */

@WebServlet("/AlterarProdutoServlet")
public class AlterarProdutoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AlterarProdutoServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("id"));
		ProdutoDAO dao = new ProdutoDAO();
		Produto produto = dao.obter(id);
		request.setAttribute("produto", produto);
		RequestDispatcher dispatcher = request.getRequestDispatcher("AlterarClienteForm.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Long id = Long.parseLong(request.getParameter("id"));
		String nome = request.getParameter("nome");
		String email = request.getParameter("email");
		String descricao = request.getParameter("descricao");
		String status = 	request.getParameter("status");
		

		Produto produto = new Produto();
		produto.setId(id);
		produto.setName(nome);
		produto.setEmail(email);
		produto.setDescription(descricao);
		produto.setStatus(status);
		
		ProdutoDAO dao = new ProdutoDAO();		
		dao.altera(produto);
		
		List<Produto> lista = dao.getLista();
		request.setAttribute("Produtos", lista);
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("ListarProdutos.jsp");
		requestDispatcher.forward(request, response);
		
	}

}

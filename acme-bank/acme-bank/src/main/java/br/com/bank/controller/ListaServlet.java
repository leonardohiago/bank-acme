package br.com.bank.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.bank.service.ClientServiceImpl;

/**
 * Servlet implementation class ListaServlet
 */
public class ListaServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ClientServiceImpl service;
    
	public ListaServlet() {
        this.service = new ClientServiceImpl();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("lista.jsp");
        request.setAttribute("clients", this.service.getAll());
        rd.forward(request, response);
    }
}

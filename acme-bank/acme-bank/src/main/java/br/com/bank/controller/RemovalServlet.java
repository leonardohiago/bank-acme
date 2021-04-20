package br.com.bank.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.bank.service.ClientServiceImpl;

/**
 * Servlet implementation class RemovalServlet
 */
public class RemovalServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ClientServiceImpl service;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.service = new ClientServiceImpl();
		String idString = request.getParameter("id");
		Long idClient = Long.parseLong(idString);
		this.service.deleteById(idClient);
		response.sendRedirect("removal.jsp");
	}
}

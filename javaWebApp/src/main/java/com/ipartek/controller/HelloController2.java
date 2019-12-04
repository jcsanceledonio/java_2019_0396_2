package com.ipartek.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloController2
 * 
 * @see HelloController para ver como hacer esto sin JSP
 */
@WebServlet("/hello2")
public class HelloController2 extends HttpServlet {
	private static final String USERNAME = "admin";
	private static final String PASSWORD = "1234";
	private static final String TETERA = "tetera";
	private static final String VISTA_RESUMEN = "resumen.jsp";
	private static final String VISTA_NO_PERMISO = "nopermiso.jsp";
	private static final String VISTA_TETERA = "tetera.jsp";

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// recibir parametos

		// peticion del cliente
		String userAgent = request.getHeader("User-Agent");
		String http = request.getProtocol();

		// parametros
		String nombre = request.getParameter("nombre");
		String password = request.getParameter("password");

		// logica de negocio

		// enviar atributos

		request.setAttribute("nombre", nombre);
		request.setAttribute("password", password);

		request.setAttribute("userAgent", userAgent);
		request.setAttribute("http", http);

		if (USERNAME.equals(nombre) && PASSWORD.equals(password)) {
			response.setStatus(HttpServletResponse.SC_OK);
			// request interna del servidor
			request.getRequestDispatcher(VISTA_RESUMEN).forward(request, response);

		} else {

			if (TETERA.equals(nombre)) {
				response.setStatus(418);
				request.getRequestDispatcher(VISTA_TETERA).forward(request, response);

			} else {
				response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
				// request interna del servidor
				request.getRequestDispatcher(VISTA_NO_PERMISO).forward(request, response);
			}

			
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

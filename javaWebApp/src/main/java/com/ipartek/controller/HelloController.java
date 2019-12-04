package com.ipartek.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloController
 * @see helloController2 para ver como se haria lo mismo pero con SERVLET + JSP
 */
@WebServlet("/hello")
public class HelloController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String USERNAME= "admin";
	private static final String PASSWORD= "1234";
	private static final String TETERA= "tetera";

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//Petición del cliente
		String userAgent = request.getHeader("User-Agent");
		String http = request.getProtocol();
		String nombre = request.getParameter("nombre");  //pepe
		String password = request.getParameter("password"); //123
		
		PrintWriter out = response.getWriter();
		
		response.setContentType("text/html");
		response.setCharacterEncoding("utf-8");
		
		boolean isMovil = false;
		
		if( userAgent.toLowerCase().contains("mobile") ) {
			isMovil = true;
		}
		
		if (USERNAME.equals(nombre) && PASSWORD.equals(password)) {
			response.setStatus(HttpServletResponse.SC_OK);
			//respuesta
			
			out.print("<html lang=\"es\">");
			out.print("<head>");
			out.print("<meta charset=\"utf-8\">");
			out.print("<title>Título del sitio</title>");
			out.print("</head>");
			out.print("<body>");
			out.print("<h1>Página principal de tuHost</h1>");
			out.print("Página ejemplo");
			out.print("<p>Es movil: "+ isMovil +"</p>");
			out.print("<ol>");
			out.print("<li>" + http + "</li>");
			out.print("<li>" + userAgent + "</li>");
			out.print("<li>" + nombre + "</li>");
			out.print("</ol>");
			out.print("</body>");
			out.print("</html>");
		}else {
			response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
			out.print("<html lang=\"es\">");
			out.print("<head>");
			out.print("<meta charset=\"utf-8\">");
			out.print("<title>Título del sitio</title>");
			out.print("</head>");
			out.print("<body>");
			out.print("<h1>Pagina principal de tuHost</h1>");
			out.print("No estas autorizado para visitar este sitio");
			out.print("</body>");
			out.print("</html>");
		}
		
		out.flush();

		// .append("Served at: ").append(request.getContextPath());
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

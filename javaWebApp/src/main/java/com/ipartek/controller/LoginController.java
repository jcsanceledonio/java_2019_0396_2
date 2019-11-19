package com.ipartek.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// recibir parametros del formulario, siempre formato String
		String nombre 		= request.getParameter("nombre");
		String contrasena 	= request.getParameter("contrasena");
		String idioma 		= request.getParameter("idioma");
		String recuerdame 	= request.getParameter("recuerdame");
		String mensaje = "";


		if ("admin".equalsIgnoreCase(nombre) && "admin".equalsIgnoreCase(contrasena)) {

			switch (idioma) {
			case "es":
				mensaje = (recuerdame == null)?"Bienvenido a la calculadora":"Bienvenido tu seras recordado";
				break;
			case "en":
				mensaje = (recuerdame == null)?"Welcome to the calculator":"Welcome you will be remembered";
				break;
			case "fr":
				mensaje = "Bienvenue sur la calculatrice.";
				break;

			default:
				break;
			}
			request.setAttribute("mensaje", mensaje);
			request.getRequestDispatcher("calculadora.jsp").forward(request, response);
		} else {

			mensaje = "El usuario o la contraseña no son correctos";
			request.setAttribute("mensaje", mensaje);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}

	}

}

package com.ipartek.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalculadoraController
 */
@WebServlet("/sumar")
public class CalculadoraController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// recibir parametros del formulario, siempre formato String
		String operacion = request.getParameter("operacion");
		String num1 = request.getParameter("op1");
		String num2 = request.getParameter("op2");
		float resultado = 0;

		try {
			
			// realizar calculos
			float n1 = Float.valueOf(num1);
			float n2 = Float.valueOf(num2);

			switch (operacion) {
			case "1":
				resultado = n1 + n2;
				break;
			case "2":
				resultado = n1 - n2;
				break;
			case "3":
				resultado = n1 * n2;
				break;
			case "4":
				resultado = n1 / n2;
				break;

			default:
				break;
			}

			// enviar datos a la vista
			request.setAttribute("op1", num1);
			request.setAttribute("op2", num2);
			request.setAttribute("resultado", resultado);

		} catch (NumberFormatException e) {
			request.setAttribute("resultado", 0);
			request.setAttribute("mensaje", "Lo sentimos pero solo sabemos sumar numeros");

		} finally {

			// ir a vista
			request.getRequestDispatcher("resultado.jsp").forward(request, response);

		}

	}

}

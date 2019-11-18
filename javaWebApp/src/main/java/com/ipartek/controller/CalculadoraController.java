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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num1 = request.getParameter("op1");
		String num2 = request.getParameter("op2");
		
		String resultado="";
		//Realizar calculos
		int numero1 =0;
		int numero2 =0;
		try {
			numero1 = Integer.parseInt(num1);
			numero2 = Integer.parseInt(num2);
			resultado = "El resultado de la suma de "+numero1+" y "+numero2+" es: "+String.valueOf(numero1+numero2);
		} catch (NumberFormatException e) {
			resultado ="Error, ¿Que coño haces? tienes que meter numeros puto";
		}

		//enviar datos a la vista
		request.setAttribute("resultado", resultado);
		request.getRequestDispatcher("resultado.jsp").forward(request, response);
			
	}

}

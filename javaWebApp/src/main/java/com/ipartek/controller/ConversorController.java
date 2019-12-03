package com.ipartek.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ConversorController
 */
@WebServlet("/convertir")
public class ConversorController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		// siempre en formato String los parametros
		
		String metros = request.getParameter("metros");
		String mensaje ="";
			
		// logica negocio
		
		if ( "".equals(metros) ) {
			mensaje =  "Por favor dime los metros";
		}else{
			
			float conversion = 0;
			try {
				float metrosFloat = Float.valueOf(metros);
				
				if (metrosFloat >= 0) {
					conversion = metrosFloat *3.281f;
				}else {
					mensaje = "Introduce un numero mayor o igual a 0";
				}
				
			} catch (NumberFormatException e) {
				mensaje = "Por favor introduce un valor numerico";
			}
			
			// enviar atributos a la JSP
			request.setAttribute("metros", metros );
			request.setAttribute("resultado", conversion );
			request.setAttribute("mensaje", mensaje );
		}
		request.getRequestDispatcher("conversor.jsp").forward(request, response);
	

	}
	
}

package com.sdzee.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servlet_consommation extends HttpServlet{

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher( "/WEB-INF/src/consommation.jsp" ).forward( request, response );
    }

}
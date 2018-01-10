package com.sdzee.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class MyServlet extends HttpServlet{

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher( "/WEB-INF/test.jsp" ).forward( request, response );
    }

}
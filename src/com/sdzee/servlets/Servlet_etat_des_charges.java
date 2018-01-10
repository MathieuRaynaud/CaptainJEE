package com.sdzee.servlets;

import com.sdzee.beans.Coyote;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Servlet_etat_des_charges extends HttpServlet{

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        this.getServletContext().getRequestDispatcher( "/WEB-INF/src/etat_des_charges.jsp" ).forward( request, response );
    }

}
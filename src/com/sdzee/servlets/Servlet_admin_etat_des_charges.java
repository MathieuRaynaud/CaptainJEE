package com.sdzee.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servlet_admin_etat_des_charges extends HttpServlet {

    public static final String VUE = "/WEB-INF/src/admin_etat_des_charges.jsp";


    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Affichage de la page de admin etat des charges */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

}

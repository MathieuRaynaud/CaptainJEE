package com.sdzee.servlets;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class Servlet_admin_gestionUtilisateurs extends HttpServlet {

    public static final String VUE = "/WEB-INF/src/admin_gestionUtilisateurs.jsp";


    public void doGet(HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        /* Affichage de la page de admin gestion des utilisateurs */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }
}

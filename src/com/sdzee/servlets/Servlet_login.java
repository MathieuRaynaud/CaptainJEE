package com.sdzee.servlets;

import com.sdzee.beans.Utilisateur;
import com.sdzee.objets_métier.LoginForm;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


public class Servlet_login extends HttpServlet {

    public static final String ATT_USER = "utilisateur";
    public static final String ATT_FORM = "form";
    public static final String VUE = "/WEB-INF/src/login.jsp";


    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{

        /* Affichage de la page de login */

        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{

        /*

        LoginForm form = new LoginForm();


        Utilisateur utilisateur = form.loggerUtilisateur( request );


        request.setAttribute( ATT_FORM, form );
        request.setAttribute( ATT_USER, utilisateur );

        */
        this.getServletContext().getRequestDispatcher( VUE ).forward( request, response );

    }

}
package com.sdzee.servlets;

import com.sdzee.beans.Coyote;
import com.sdzee.beans.Utilisateur;
import com.sdzee.form.LoginForm;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Servlet_etat_des_charges extends HttpServlet{

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        boolean etatCheckBox = request.getParameter( "cb_id" ) != null;
        this.getServletContext().getRequestDispatcher( "/WEB-INF/src/etat_des_charges.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        String charge1 = request.getParameter( "charge1" );
        String charge2 = request.getParameter( "charge2" );
        String charge3 = request.getParameter( "charge3" );

        if (charge1.equals("true")) {
            //Code pour écrire dans la BDD et sur le bean
        } else {
            //
        }
        if (charge2.equals("true")) {
            //Code pour écrire dans la BDD et sur le bean
        } else {
            //
        }
        if (charge3.equals("true")) {
            //Code pour écrire dans la BDD et sur le bean
            System.out.println("OK");
        } else {
            //
        }
        this.getServletContext().getRequestDispatcher( "/WEB-INF/src/etat_des_charges.jsp" ).forward( request, response );
    }

}
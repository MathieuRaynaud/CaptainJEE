package com.sdzee.servlets;

import com.sdzee.API_BDD.SQLite;
import com.sdzee.objets_métier.Gestionnaire_de_etat_des_charges;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Servlet_etat_des_charges extends HttpServlet{

    public static final String ATT_CHARGES = "charges";
    public static final String ATT_GEST = "gest_charges";
    public static final String VUE = "/WEB-INF/src/login.jsp";
    public SQLite bdd = new SQLite("/WEB-INF/src/db.sqlite");

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        boolean etatCheckBox = request.getParameter( "cb_id" ) != null;
        this.getServletContext().getRequestDispatcher( "/WEB-INF/src/etat_des_charges.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        Gestionnaire_de_etat_des_charges gest = Gestionnaire_de_etat_des_charges.getInstance();

        String charge1 = request.getParameter( "charge1" );
        String charge2 = request.getParameter( "charge2" );
        String charge3 = request.getParameter( "charge3" );
        System.out.println("Connection à la base de données...");
        bdd.connect();
        bdd.close();
        if (!charge1.equals("null")) {
            if (charge1.equals("true")) {
                //Code pour écrire dans la BDD et sur le bean
                gest.changerEtatCharge(1,true);
            } else {
                //

                gest.changerEtatCharge(1,false);
            }
        }
        if (!charge2.equals("null")) {
            if (charge2.equals("true")) {
                //Code pour écrire dans la BDD et sur le bean
                gest.changerEtatCharge(2,true);
            } else {
                //
                gest.changerEtatCharge(2,false);
            }
        }
        if (!charge3.equals("null")) {
            if (charge3.equals("true")) {
                //Code pour écrire dans la BDD et sur le bean
                gest.changerEtatCharge(3,true);
            } else {
                //
                gest.changerEtatCharge(3,false);
            }
        }
        this.getServletContext().getRequestDispatcher( "/WEB-INF/src/etat_des_charges.jsp" ).forward( request, response );
    }

}
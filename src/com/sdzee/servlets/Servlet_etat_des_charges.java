package com.sdzee.servlets;

import com.sdzee.API_BDD.SQLite;
import com.sdzee.objets_métier.Gestionnaire_de_etat_des_charges;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.*;

public class Servlet_etat_des_charges extends HttpServlet{

    public static final String ATT_CHARGES = "charges";
    public static final String ATT_GEST = "gest_charges";
    public static final String VUE = "/src/login.jsp";

    public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException {
        boolean etatCheckBox = request.getParameter( "cb_id" ) != null;
        this.getServletContext().getRequestDispatcher( "/WEB-INF/src/etat_des_charges.jsp" ).forward( request, response );
    }

    public void doPost( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
        Gestionnaire_de_etat_des_charges gest = Gestionnaire_de_etat_des_charges.getInstance();
        String charge1 = request.getParameter("charge1");
        String charge2 = request.getParameter("charge2");
        String charge3 = request.getParameter("charge3");

        System.out.println("Etat des charges transmis : "+charge1+", "+charge2+", "+charge3);
        gest.getBDD().connect();

        gest.getBDD().submit("CREATE TABLE IF NOT EXISTS charge (\n" +
                "\n" +
                "    numero_sortie_de_puissance INTEGER,\n" +
                "\n" +
                "    id_boitier_secondaire INTEGER,\n" +
                "\n" +
                "    nom TEXT,\n" +
                "\n" +
                "    priorite INTEGER NOT NULL,\n" +
                "\n" +
                "    calibre double NOT NULL,\n" +
                "\n" +
                "    etat_actuel INTEGER NOT NULL,\n" +
                "\n" +
                "    etat_par_defaut INTEGER NOT NULL,\n" +
                "\n" +
                "    consommation DOUBLE NOT NULL,\n" +
                "\n" +
                "    PRIMARY KEY(numero_sortie_de_puissance, id_boitier_secondaire)\n" +
                "\n" +
                ") WITHOUT ROWID;");

        if (!(charge1==null)) {
            if (charge1.equals("true")) {
                gest.changerEtatCharge(1, true);
                System.out.println("Ecriture dans la BDD !");
                ResultSet test = gest.getBDD().query("SELECT nom FROM charge WHERE nom = \"Frigo\"");
                try {
                    if (!test.next()) {
                        gest.getBDD().submit("insert into charge values (1,3,\"Frigo\", 1,12,1,0,60.0); ");
                    }
                    else {
                        gest.getBDD().submit("update charge set etat_actuel=1 where nom = \"Frigo\"; ");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }

            } else {
                gest.changerEtatCharge(1, false);
                System.out.println("Ecriture dans la BDD !");
                ResultSet test = gest.getBDD().query("SELECT nom FROM charge WHERE nom = \"Frigo\"");
                try {
                    if (!test.next()) {
                        gest.getBDD().submit("insert into charge values (1,3,\"Frigo\", 1,12,0,0,60.0); ");
                    }
                    else {
                        gest.getBDD().submit("update charge set etat_actuel=0 where nom = \"Frigo\"; ");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        if (!(charge2==null)) {
            if (charge2.equals("true")) {
                gest.changerEtatCharge(2, true);
                System.out.println("Ecriture dans la BDD !");
                ResultSet test = gest.getBDD().query("SELECT nom FROM charge WHERE nom = \"lampes_cuisine\"");
                try {
                    if (!test.next()) {
                        gest.getBDD().submit("insert into charge values (2,3,\"lampes_cuisine\", 3,13,1,0,30.0); ");
                    }
                    else {
                        gest.getBDD().submit("update charge set etat_actuel=1 where nom=\"lampes_cuisine\"; ");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } else {
                gest.changerEtatCharge(2, false);
                System.out.println("Ecriture dans la BDD !");
                ResultSet test = gest.getBDD().query("SELECT nom FROM charge WHERE nom = \"lampes_cuisine\"");
                try {
                    if (!test.next()) {
                        gest.getBDD().submit("insert into charge values (2,3,\"lampes_cuisine\", 3,13,0,0,30.0); ");
                    }
                    else {
                        gest.getBDD().submit("update charge set etat_actuel=0 where nom=\"lampes_cuisine\"; ");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        if (!(charge3==null)) {
            if (charge3.equals("true")) {
                gest.changerEtatCharge(3, true);
                System.out.println("Ecriture dans la BDD !");
                ResultSet test = gest.getBDD().query("SELECT nom FROM charge WHERE nom = \"lampe_secu_garage\"");
                try {
                    if (!test.next()) {
                        gest.getBDD().submit("insert into charge values (3,3,\"lampe_secu_garage\",2 ,14,1,1,50.0); ");
                    }
                    else {
                        gest.getBDD().submit("update charge set etat_actuel=1 where nom=\"lampe_secu_garage\"; ");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            } else {
                gest.changerEtatCharge(3, false);
                System.out.println("Ecriture dans la BDD !");
                ResultSet test = gest.getBDD().query("SELECT nom FROM charge WHERE nom = \"lampe_secu_garage\"");
                try {
                    if (!test.next()) {
                        gest.getBDD().submit("insert into charge values (3,3,\"lampe_secu_garage\",2 ,14,0,1,50.0); ");
                    }
                    else {
                        gest.getBDD().submit("update charge set etat_actuel=0 where nom=\"lampe_secu_garage\"; ");
                    }
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }

        gest.getBDD().close();
        this.getServletContext().getRequestDispatcher("/WEB-INF/src/etat_des_charges.jsp").forward(request, response);


    }

}
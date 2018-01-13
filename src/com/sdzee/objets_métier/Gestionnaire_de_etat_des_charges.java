package com.sdzee.objets_métier;

import com.sdzee.beans.Etat_des_charges;

import javax.servlet.http.HttpServletRequest;


public class Gestionnaire_de_etat_des_charges {

    private Etat_des_charges charges;

    private Gestionnaire_de_etat_des_charges() {
        charges = new Etat_des_charges();
    }

    private static Gestionnaire_de_etat_des_charges instance = new Gestionnaire_de_etat_des_charges();

    public static Gestionnaire_de_etat_des_charges getInstance() {
        return instance;
    }

    public Etat_des_charges donneCharges(HttpServletRequest request ) {
        //Remplir avec BDD en appelant changerEtatCharge()
        return charges;
    }

    public void changerEtatCharge(int indice, boolean value) {
        //Ajouter code pour modifier dans la BDD

        System.out.println("Avane le changement :");
        charges.printCharges();

        charges.changerEtatCharge(indice,value);

        System.out.println("Après le changement :");
        charges.printCharges();

    }
}

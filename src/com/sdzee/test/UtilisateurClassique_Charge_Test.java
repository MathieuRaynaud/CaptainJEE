package com.sdzee.test;

import com.sdzee.backend_classes.Charge;
import com.sdzee.beans.Etat_des_charges;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertTrue;

public class UtilisateurClassique_Charge_Test {

    private Etat_des_charges charges;

    @Before
    public void setUp() {
        charges = new Etat_des_charges();
    }

    @Test
    public void etat_des_charges_vide() {
        assertTrue(charges.get_liste_de_charges().isEmpty());
    }

    @Test
    public void etat_des_charges_ajout_une_charge() {
        charges.ajouter_charge(new Charge());

        assertEquals(charges.get_liste_de_charges().size(), 1);
    }

    @Test
    public void etat_des_charges_ajout_deux_charges() {
        charges.ajouter_charge(new Charge());
        charges.ajouter_charge(new Charge());

        assertEquals(charges.get_liste_de_charges().size(), 2);
    }

    @Test
    public void premiere_charge_on() {
        int index = 0;
        boolean etat_charge = true;
        boolean etat_expected = true;

        charges.ajouter_charge(new Charge());
        charges.ajouter_charge(new Charge());

        charges.changerEtatCharge(index + 1, etat_charge);

        assertEquals(charges.get_liste_de_charges().get(index).etat_actuel, etat_expected);
    }

    @Test
    public void premiere_charge_off() {
        int index = 0;
        boolean etat_charge = false;
        boolean etat_expected = false;

        charges.ajouter_charge(new Charge());
        charges.ajouter_charge(new Charge());

        charges.changerEtatCharge(index + 1, etat_charge);

        assertEquals(charges.get_liste_de_charges().get(index).etat_actuel, etat_expected);
    }

    @Test
    public void deuxieme_charge_on() {
        int index = 1;
        boolean etat_charge = true;
        boolean etat_expected = true;

        charges.ajouter_charge(new Charge());
        charges.ajouter_charge(new Charge());

        charges.changerEtatCharge(index + 1, etat_charge);

        assertEquals(charges.get_liste_de_charges().get(index).etat_actuel, etat_expected);
    }

    @Test
    public void deuxieme_charge_off() {
        int index = 1;
        boolean etat_charge = false;
        boolean etat_expected = false;

        charges.ajouter_charge(new Charge());
        charges.ajouter_charge(new Charge());

        charges.changerEtatCharge(index + 1, etat_charge);

        assertEquals(charges.get_liste_de_charges().get(index).etat_actuel, etat_expected);
    }

}

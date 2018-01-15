package com.sdzee.test;

import com.sdzee.backend_classes.Charge;
import com.sdzee.backend_classes.Interrupteur;
import com.sdzee.beans.Etat_Interrupteur;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.*;

public class Interrupteur_Test {

    private Etat_Interrupteur interrupteurs;

    @Before
    public void setUp() {
        interrupteurs = new Etat_Interrupteur();
    }

    @Test
    public void etat_interrupteur_vide() {
        assertTrue(interrupteurs.isEmpty());
    }

    @Test
    public void ajout_interrupteur_vide() {
        interrupteurs.add(new Interrupteur());

        assertEquals(interrupteurs.size(), 1);
    }

    @Test
    public void ajout_un_interrupteur_une_charge() {
        Interrupteur interrupteur = new Interrupteur();
        Charge charge = new Charge();

        interrupteurs.add(interrupteur);
        interrupteurs.addCharge(charge, interrupteur);

        assertEquals(interrupteur.liste_charges.size(), 1);
        assertTrue(interrupteurs.containsCharge(charge, interrupteur));
    }

    @Test
    public void ajout_un_interrupteur_deux_charges() {
        Interrupteur interrupteur = new Interrupteur();
        Charge charge1 = new Charge();
        Charge charge2 = new Charge();

        interrupteurs.add(interrupteur);
        interrupteurs.addCharge(charge1, interrupteur);
        interrupteurs.addCharge(charge2, interrupteur);

        assertEquals(interrupteur.liste_charges.size(), 2);
        assertTrue(interrupteurs.containsCharge(charge1, interrupteur));
        assertTrue(interrupteurs.containsCharge(charge2, interrupteur));
    }

    @Test
    public void retrait_une_charge() {
        Interrupteur interrupteur = new Interrupteur();
        Charge charge1 = new Charge();
        Charge charge2 = new Charge();

        interrupteurs.add(interrupteur);
        interrupteurs.addCharge(charge1, interrupteur);
        interrupteurs.addCharge(charge2, interrupteur);

        interrupteurs.removeCharge(charge1, interrupteur);

        assertEquals(interrupteur.liste_charges.size(), 1);
        assertFalse(interrupteurs.containsCharge(charge1, interrupteur));
        assertTrue(interrupteurs.containsCharge(charge2, interrupteur));
    }

    @Test
    public void mise_a_off_dun_interrupteur() {
        boolean etatExpected = false;
        boolean etat = false;
        Interrupteur interrupteur = new Interrupteur();
        Charge charge1 = new Charge();
        Charge charge2 = new Charge();

        interrupteurs.add(interrupteur);
        interrupteurs.addCharge(charge1, interrupteur);
        interrupteurs.addCharge(charge2, interrupteur);

        interrupteurs.changerEtatInterrupteur(0, etat);

        assertEquals(charge1.etat_actuel, etatExpected);
        assertEquals(charge2.etat_actuel, etatExpected);
    }

    @Test
    public void mise_a_on_dun_interrupteur() {
        boolean etatExpected = true;
        boolean etat = true;
        Interrupteur interrupteur = new Interrupteur();
        Charge charge1 = new Charge();
        Charge charge2 = new Charge();

        interrupteurs.add(interrupteur);
        interrupteurs.addCharge(charge1, interrupteur);
        interrupteurs.addCharge(charge2, interrupteur);

        interrupteurs.changerEtatInterrupteur(0, etat);

        assertEquals(charge1.etat_actuel, etatExpected);
        assertEquals(charge2.etat_actuel, etatExpected);
    }


    @Test
    public void mise_a_on_interrupteur1_mise_a_off_interrupteur2() {
        boolean interrupteur1_etatExpected = true;
        boolean interrupteur1_etat = true;
        boolean interrupteur2_etatExpected = false;
        boolean interrupteur2_etat = false;
        Interrupteur interrupteur1 = new Interrupteur();
        Charge charge1_1 = new Charge();
        Charge charge1_2 = new Charge();
        Interrupteur interrupteur2 = new Interrupteur();
        Charge charge2_1 = new Charge();
        Charge charge2_2 = new Charge();

        interrupteurs.add(interrupteur1);
        interrupteurs.addCharge(charge1_1, interrupteur1);
        interrupteurs.addCharge(charge1_2, interrupteur1);
        interrupteurs.add(interrupteur2);
        interrupteurs.addCharge(charge2_1, interrupteur2);
        interrupteurs.addCharge(charge2_2, interrupteur2);

        interrupteurs.changerEtatInterrupteur(0, interrupteur1_etat);
        interrupteurs.changerEtatInterrupteur(1, interrupteur2_etat);

        assertEquals(charge1_1.etat_actuel, interrupteur1_etatExpected);
        assertEquals(charge1_2.etat_actuel, interrupteur1_etatExpected);
        assertEquals(charge2_1.etat_actuel, interrupteur2_etatExpected);
        assertEquals(charge2_2.etat_actuel, interrupteur2_etatExpected);
    }

}

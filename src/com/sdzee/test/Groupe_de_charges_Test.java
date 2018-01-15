package com.sdzee.test;

import com.sdzee.backend_classes.Charge;
import com.sdzee.backend_classes.Groupe_de_charges;
import com.sdzee.beans.Etat_Groupe_de_charges;
import com.sdzee.beans.Etat_des_charges;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;

public class Groupe_de_charges_Test {

    private Etat_Groupe_de_charges groupes;

    @Before
    public void setUp() {
        groupes = new Etat_Groupe_de_charges();
    }

    @Test
    public void etat_groupe_de_charges_vide() {
        assertTrue(groupes.isEmpty());
    }

    @Test
    public void ajout_un_groupe_vide() {
        groupes.add(new Groupe_de_charges());

        assertEquals(groupes.size(), 1);
    }

    @Test
    public void ajout_un_groupe_une_charge() {
        Groupe_de_charges groupe = new Groupe_de_charges();
        Charge charge = new Charge();

        groupes.add(groupe);
        groupes.addCharge(charge, groupe);

        assertEquals(groupe.liste_charges.size(), 1);
        assertTrue(groupes.containsCharge(charge, groupe));
    }

    @Test
    public void ajout_un_groupe_deux_charges() {
        Groupe_de_charges groupe1 = new Groupe_de_charges();
        Charge charge1 = new Charge();
        Charge charge2 = new Charge();

        groupes.add(groupe1);
        groupes.addCharge(charge1, groupe1);
        groupes.addCharge(charge2, groupe1);

        assertEquals(groupe1.liste_charges.size(), 2);
        assertTrue(groupes.containsCharge(charge1, groupe1));
        assertTrue(groupes.containsCharge(charge2, groupe1));
    }

    @Test
    public void retrait_une_charge() {
        Groupe_de_charges groupe1 = new Groupe_de_charges();
        Charge charge1 = new Charge();
        Charge charge2 = new Charge();

        groupes.add(groupe1);
        groupes.addCharge(charge1, groupe1);
        groupes.addCharge(charge2, groupe1);

        groupes.removeCharge(charge1, groupe1);

        assertEquals(groupe1.liste_charges.size(), 1);
        assertFalse(groupes.containsCharge(charge1, groupe1));
        assertTrue(groupes.containsCharge(charge2, groupe1));
    }

    @Test
    public void mise_a_off_dun_groupe() {
        boolean etatExpected = false;
        boolean etat = false;
        Groupe_de_charges groupe1 = new Groupe_de_charges();
        Charge charge1 = new Charge();
        Charge charge2 = new Charge();

        groupes.add(groupe1);
        groupes.addCharge(charge1, groupe1);
        groupes.addCharge(charge2, groupe1);

        groupes.changerEtatGroupe(0, etat);

        assertEquals(charge1.etat_actuel, etatExpected);
        assertEquals(charge2.etat_actuel, etatExpected);
    }

    @Test
    public void mise_a_on_dun_groupe() {
        boolean etatExpected = true;
        boolean etat = true;
        Groupe_de_charges groupe1 = new Groupe_de_charges();
        Charge charge1 = new Charge();
        Charge charge2 = new Charge();

        groupes.add(groupe1);
        groupes.addCharge(charge1, groupe1);
        groupes.addCharge(charge2, groupe1);

        groupes.changerEtatGroupe(0, etat);

        assertEquals(charge1.etat_actuel, etatExpected);
        assertEquals(charge2.etat_actuel, etatExpected);
    }


    @Test
    public void mise_a_on_groupe1_mise_a_off_groupe2() {
        boolean groupe1_etatExpected = true;
        boolean groupe1_etat = true;
        boolean groupe2_etatExpected = false;
        boolean groupe2_etat = false;
        Groupe_de_charges groupe1 = new Groupe_de_charges();
        Charge charge1_1 = new Charge();
        Charge charge1_2 = new Charge();
        Groupe_de_charges groupe2 = new Groupe_de_charges();
        Charge charge2_1 = new Charge();
        Charge charge2_2 = new Charge();

        groupes.add(groupe1);
        groupes.addCharge(charge1_1, groupe1);
        groupes.addCharge(charge1_2, groupe1);
        groupes.add(groupe2);
        groupes.addCharge(charge2_1, groupe2);
        groupes.addCharge(charge2_2, groupe2);

        groupes.changerEtatGroupe(0, groupe1_etat);
        groupes.changerEtatGroupe(1, groupe2_etat);

        assertEquals(charge1_1.etat_actuel, groupe1_etatExpected);
        assertEquals(charge1_2.etat_actuel, groupe1_etatExpected);
        assertEquals(charge2_1.etat_actuel, groupe2_etatExpected);
        assertEquals(charge2_2.etat_actuel, groupe2_etatExpected);
    }

}

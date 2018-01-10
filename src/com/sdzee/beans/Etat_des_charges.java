package com.sdzee.beans;

import backend_classes.Charge;

import java.util.ArrayList;

public class Etat_des_charges {

    private ArrayList<Charge> liste_de_charges = new ArrayList<Charge>();

    public ArrayList<Charge> get_liste_de_charges() { return this.liste_de_charges; }
    public void ajouter_charge(Charge c) { liste_de_charges.add(c); }
    public void supprimer_charge(Charge c) { liste_de_charges.remove(c); }

}

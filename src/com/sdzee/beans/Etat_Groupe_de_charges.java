package com.sdzee.beans;

import com.sdzee.backend_classes.Charge;
import com.sdzee.backend_classes.Groupe_de_charges;

import java.util.LinkedList;
import java.util.List;

public class Etat_Groupe_de_charges {

    private List<Groupe_de_charges> groupes;

    public Etat_Groupe_de_charges() {
        groupes = new LinkedList<>();
    }

    public void add(Groupe_de_charges groupe) {
        groupes.add(groupe);
    }

    public void remove(Groupe_de_charges groupe) {
        groupes.remove(groupe);
    }

    public void remove(int index) {
        groupes.remove(index);
    }

    public boolean isEmpty() {
        return groupes.isEmpty();
    }

    public int size() {
        return groupes.size();
    }

    public void addCharge(Charge charge, int indexGroupe) {
        Groupe_de_charges groupe = groupes.get(indexGroupe);
        groupe.liste_charges.add(charge);
    }

    public void addCharge(Charge charge, Groupe_de_charges groupe) {
        if (groupes.contains(groupe))
            groupe.liste_charges.add(charge);
    }

    public boolean containsCharge(Charge charge, Groupe_de_charges groupe) {
        if (groupes.contains(groupe)) {
            return groupe.liste_charges.contains(charge);
        }
        else
            return false;
    }

    public void changerEtatGroupe(int index, boolean value) {
        Groupe_de_charges groupe = groupes.get(index);
        for (Charge charge : groupe.liste_charges) {
            charge.etat_actuel = value;
        }
    }

}

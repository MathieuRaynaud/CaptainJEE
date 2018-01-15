package com.sdzee.beans;

import com.sdzee.backend_classes.Charge;
import com.sdzee.backend_classes.Interrupteur;

import java.util.LinkedList;
import java.util.List;

public class Etat_Interrupteur {

    private List<Interrupteur> interrupteurs;

    public Etat_Interrupteur() {
        interrupteurs = new LinkedList<>();
    }

    public void add(Interrupteur interrupteur) {
        interrupteurs.add(interrupteur);
    }

    public void addCharge(Charge charge, Interrupteur interrupteur) {
        if (interrupteurs.contains(interrupteur)) {
            interrupteur.liste_charges.add(charge);
        }
    }

    public void addCharge(Charge charge, int index) {
        Interrupteur interrupteur = interrupteurs.get(index);
        interrupteur.liste_charges.add(charge);
    }

    public void remove(Interrupteur interrupteur) {
        interrupteurs.remove(interrupteur);
    }

    public void remove(int index) {
        interrupteurs.remove(index);
    }

    public void removeCharge(Charge charge, int index) {
        Interrupteur interrupteur = interrupteurs.get(index);
        interrupteur.liste_charges.remove(charge);
    }

    public void removeCharge(Charge charge, Interrupteur interrupteur) {
        if (interrupteurs.contains(interrupteur)) {
            interrupteur.liste_charges.remove(charge);
        }
    }

    public boolean isEmpty() {
        return interrupteurs.isEmpty();
    }

    public int size() {
        return interrupteurs.size();
    }

    public boolean containsCharge(Charge charge, Interrupteur interrupteur) {
        if (interrupteurs.contains(interrupteur)) {
            return interrupteur.liste_charges.contains(charge);
        }
        else
            return false;
    }

    public void changerEtatInterrupteur(int i, boolean etat) {
        Interrupteur interrupteur = interrupteurs.get(i);
        for (Charge charge : interrupteur.liste_charges) {
            charge.etat_actuel = etat;
        }
    }
}

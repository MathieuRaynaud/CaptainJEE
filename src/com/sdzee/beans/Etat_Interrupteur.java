package com.sdzee.beans;

import com.sdzee.backend_classes.Charge;
import com.sdzee.backend_classes.Groupe_de_charges;
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

    public void remove(Interrupteur interrupteur) {
        interrupteurs.remove(interrupteur);
    }

    public void remove(int index) {
        interrupteurs.remove(index);
    }

    public boolean isEmpty() {
        return interrupteurs.isEmpty();
    }

    public int size() {
        return interrupteurs.size();
    }

    public void changerEtat(int index, boolean value) {
        Interrupteur interrupteur = interrupteurs.get(index);
    }

}

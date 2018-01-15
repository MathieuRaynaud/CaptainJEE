package com.sdzee.backend_classes;

import java.util.ArrayList;

public class Interrupteur {
    private int id_interrupteur;
    private int numero_de_commande;
    private String nom;
    public ArrayList<Charge> liste_charges = new ArrayList<>();
    public ArrayList<Groupe_de_charges> liste_groupe_de_charges = new ArrayList<>();
}

package com.sdzee.backend_classes;

import java.util.ArrayList;

public class Groupe_de_charges {
    private int id_groupe_charges;
    public String etat;
    private String nom;
    private float consommation;
    public ArrayList<Charge> liste_charges = new ArrayList<>();
    public ArrayList<Groupe_de_charges> liste_groupe_de_charges = new ArrayList<>();
    private ArrayList<Interrupteur> liste_interrupteurs;
    private ArrayList<Categorie> liste_categories;
}

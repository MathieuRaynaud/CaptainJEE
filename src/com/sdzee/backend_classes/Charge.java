package com.sdzee.backend_classes;

import java.util.ArrayList;

public class Charge {
    public int id_charge;
    public String nom;
    public int numero_sortie_de_puissance;
    public int priorite;
    public float calibre;
    public boolean etat_actuel = true;
    private boolean etat_par_defaut;
    private float consommation;
    private Consommation_heure consommation_heure;
    public Categorie categorie;
    private ArrayList<Groupe_de_charges> liste_groupe_de_charges;
    private ArrayList<Interrupteur> liste_interrupteurs;
    public Boitier_secondaire boitier;

}

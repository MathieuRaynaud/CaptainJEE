package backend_classes;

import java.util.ArrayList;

public class Groupe_de_charges {
    private int id_groupe_charges;
    private String etat;
    private String nom;
    private float consommation;
    private ArrayList<Charge> liste_charges;
    private ArrayList<Interrupteur> liste_interrupteurs;
    private ArrayList<Categorie> liste_categories;
}

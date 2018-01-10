package backend_classes;

import java.util.ArrayList;

public class Charge {
    private int id_charge;
    private int numero_sortie_de_puissance;
    private int priorite;
    private float calibre;
    private boolean etat_actuel = true;
    private boolean etat_par_defaut;
    private float consommation;
    private Consommation_heure consommation_heure;
    private Categorie categorie;
    private ArrayList<Groupe_de_charges> liste_groupe_de_charges;
    private ArrayList<Interrupteur> liste_interrupteurs;
    private Boitier_secondaire boitier;

}

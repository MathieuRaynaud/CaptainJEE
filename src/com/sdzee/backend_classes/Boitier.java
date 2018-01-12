package com.sdzee.backend_classes;

import java.util.List;

public class Boitier {
    private int id_boitier;
    private float consommation;
    private String etat_des_sous_disjoncteurs;
    private String nom;
    private Source source;
    private List<Fil> liste_fils;
}

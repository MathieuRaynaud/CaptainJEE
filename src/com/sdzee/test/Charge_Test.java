import com.sdzee.backend_classes.Boitier_secondaire;
import com.sdzee.backend_classes.Categorie;
import com.sdzee.backend_classes.Charge;
import com.sdzee.beans.Etat_des_charges;
import org.junit.Before;
import org.junit.Test;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertSame;
import static org.junit.Assert.assertTrue;

public class Charge_Test {

    private Etat_des_charges charges;

    @Before
    public void setUp() {
        charges = new Etat_des_charges();
    }

    @Test
    public void etat_des_charges_vide() {
        assertTrue(charges.get_liste_de_charges().isEmpty());
    }

    @Test
    public void etat_des_charges_ajout_une_charge() {
        charges.ajouter_charge(new Charge());

        assertEquals(charges.get_liste_de_charges().size(), 1);
    }

    @Test
    public void etat_des_charges_ajout_deux_charges() {
        charges.ajouter_charge(new Charge());
        charges.ajouter_charge(new Charge());

        assertEquals(charges.get_liste_de_charges().size(), 2);
    }

    @Test
    public void premiere_charge_on() {
        int index = 0;
        boolean etat_charge = true;
        boolean etat_expected = true;

        charges.ajouter_charge(new Charge());
        charges.ajouter_charge(new Charge());

        charges.changerEtatCharge(index + 1, etat_charge);

        assertEquals(charges.get_liste_de_charges().get(index).etat_actuel, etat_expected);
    }

    @Test
    public void premiere_charge_off() {
        int index = 0;
        boolean etat_charge = false;
        boolean etat_expected = false;

        charges.ajouter_charge(new Charge());
        charges.ajouter_charge(new Charge());

        charges.changerEtatCharge(index + 1, etat_charge);

        assertEquals(charges.get_liste_de_charges().get(index).etat_actuel, etat_expected);
    }

    @Test
    public void deuxieme_charge_on() {
        int index = 1;
        boolean etat_charge = true;
        boolean etat_expected = true;

        charges.ajouter_charge(new Charge());
        charges.ajouter_charge(new Charge());

        charges.changerEtatCharge(index + 1, etat_charge);

        assertEquals(charges.get_liste_de_charges().get(index).etat_actuel, etat_expected);
    }

    @Test
    public void deuxieme_charge_off() {
        int index = 1;
        boolean etat_charge = false;
        boolean etat_expected = false;

        charges.ajouter_charge(new Charge());
        charges.ajouter_charge(new Charge());

        charges.changerEtatCharge(index + 1, etat_charge);

        assertEquals(charges.get_liste_de_charges().get(index).etat_actuel, etat_expected);
    }

    @Test
    public void modifier_nom_charge() {
        String nom = "Charge 1";
        String nom_expected = "Charge 1";
        Charge charge = new Charge();

        charges.ajouter_charge(charge);
        charges.changerNomCharge(0, nom);

        assertEquals(charge.nom, nom_expected);
    }

    @Test
    public void modifier_localisation_charge() {
        Boitier_secondaire boitier = new Boitier_secondaire();
        int numero_sortie_puissance = 1;
        int numero_sortie_puissance_expected = 1;
        Charge charge = new Charge();

        charges.ajouter_charge(charge);
        charges.changerLocalisationCharge(0, boitier, numero_sortie_puissance);

        assertSame(charge.boitier, boitier);
        assertEquals(charge.numero_sortie_de_puissance, numero_sortie_puissance_expected);
    }

    @Test
    public void modifier_priorite_charge() {
        int priorite = 1;
        int priorite_expected = 1;
        Charge charge = new Charge();

        charges.ajouter_charge(charge);
        charges.changerPrioriteCharge(0, priorite);

        assertEquals(charge.priorite, priorite_expected);
    }

    @Test
    public void modifier_calibre_charge() {
        float calibre = 2.0f;
        float calibre_expected = 2.0f;
        Charge charge = new Charge();

        charges.ajouter_charge(charge);
        charges.changerCalibreCharge(0, calibre);

        assertEquals(charge.calibre, calibre_expected, 0.0f);
    }

    @Test
    public void modifier_categorie_charge() {
        Categorie categorie = new Categorie();
        Charge charge = new Charge();

        charges.ajouter_charge(charge);
        charges.changerCategorieCharge(0, categorie);

        assertSame(charge.categorie, categorie);
    }

}

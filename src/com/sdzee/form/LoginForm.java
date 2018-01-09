package com.sdzee.form;

import com.sdzee.beans.Utilisateur;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;


public final class LoginForm {

    private static final String CHAMP_EMAIL  = "email";
    private static final String CHAMP_PASS   = "password";

    private String resultat;
    private Map<String,String> erreurs = new HashMap<String,String>();

    public Utilisateur loggerUtilisateur(HttpServletRequest request ) {

        String email = getValeurChamp( request, CHAMP_EMAIL );
        String password = getValeurChamp( request, CHAMP_PASS );
        Utilisateur utilisateur = new Utilisateur();
        try {
            validationEmail( email );
        } catch ( Exception e ) {
            setErreur( CHAMP_EMAIL, e.getMessage() );
        }

        try {
            validationPassword( password );

        } catch (Exception e) {
            setErreur( CHAMP_PASS, e.getMessage() );
        }

        try {
            authentification( email, password );
        } catch ( Exception e) {
            setErreur(CHAMP_EMAIL, e.getMessage());
        }

        if ( erreurs.isEmpty() ) {
            resultat = "Succès";
        } else {
            resultat = "Échec d'authentification";
        }

        return utilisateur;
    }

    private void validationEmail( String email ) throws Exception {
        if (email != null ) {
            if ( !email.matches( "([^.@]+)(\\.[^.@]+)*@([^.@]+\\.)+([^.@]+)" ) ) {
                throw new Exception( "Merci de saisir une adresse mail valide." );
            }
        } else {
            throw new Exception( "Merci de saisir une adresse mail." );
        }
    }

    private void validationPassword( String password) throws Exception {
        if (password != null) {
           if (password.length() < 6 ) {
               throw new Exception("Les mots de passe doivent contenir au moins 6 caractères.");
           }
        }
    }

    private void authentification( String email, String password ) throws Exception {

        throw new Exception("L'email et le mot de passe fournis ne correspondent pas");
    }

    private static String getValeurChamp( HttpServletRequest request, String nomChamp ) {
        String valeur = request.getParameter(nomChamp);

        if (valeur == null || valeur.trim().length() == 0) {
            return null;
        } else {
            return valeur.trim();
        }
    }

    public String getResultat() {
        return resultat;
    }


    public Map<String,String> getErreurs() {
        return erreurs;
    }

    private void setErreur( String champ, String message ) {
        erreurs.put( champ, message );
    }
}
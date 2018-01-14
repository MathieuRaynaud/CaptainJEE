package com.sdzee.API_BDD;

import org.sqlite.JDBC;

import java.sql.*;

public class SQLite {
    private String DBPath;
    private Connection connection = null;
    private Statement statement = null;

    public SQLite(String dBPath) {
        DBPath = dBPath;
    }

    public void connect() {
        try {
            DriverManager.registerDriver(new JDBC());
            Class.forName("org.sqlite.JDBC");
            connection = DriverManager.getConnection("jdbc:sqlite:" + DBPath);
            statement = connection.createStatement();
            System.out.println("Connexion a " + DBPath + " avec succès");
        } catch (SQLException sqlException) {
            sqlException.printStackTrace();
            System.out.println("Erreur de connection");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("Erreur de connection");
        }
    }

    public ResultSet query(String requete) {
        ResultSet resultat = null;
        try {
            resultat = statement.executeQuery(requete);
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Erreur dans la requete : " + requete);
        }
        return resultat;

    }

    public void submit(String requete) {
        try {
            statement.executeUpdate(requete);
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    public void close() {
        try {
            statement.close();
            connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
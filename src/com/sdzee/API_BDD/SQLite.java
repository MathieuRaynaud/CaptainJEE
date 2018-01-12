package com.sdzee.API_BDD;

import org.sqlite.JDBC;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

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
        }  catch (SQLException sqlException) {
            sqlException.printStackTrace();
            System.out.println("Erreur de connection");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("Erreur de connection");
        }
    }

    public void close() {
        try {
            connection.close();
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
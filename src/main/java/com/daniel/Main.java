package com.daniel;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.sql.*;

public class Main {
    public static void main(String[] args) {
        File ar = new File("src/main/resources/Pokemon.db");
        try (Connection conexio = DriverManager.getConnection("jdbc:sqlite:" + ar.getPath())){
            System.out.println("Conexion hecha.");
            String cosas = new String(Files.readAllBytes(Path.of("src/main/resources/Crear_bd.sql")));
            //System.out.println(cosas);
            Statement sentenciaSQL = conexio.createStatement();
            sentenciaSQL.executeUpdate(cosas);
            sentenciaSQL.close();
            conexio.close();
        } catch (SQLException e) {
            System.out.println("Error...");
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}

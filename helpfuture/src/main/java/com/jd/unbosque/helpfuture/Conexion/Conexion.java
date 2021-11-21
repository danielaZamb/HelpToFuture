package com.jd.unbosque.helpfuture.Conexion;

import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {

	private String db = "helpto";
	private String url = "jdbc:mysql://127.0.0.1/" + db; // Definimos la ruta de la base de datos
	private String users = "root"; // Definimos el nombre de usuario de la base de datos
	private String contra = "123456"; // Definimos la contraseña de la base de datos
	private String control = "com.mysql.cj.jdbc.Driver"; // Definimos el controlador de carga

	// Objeto sin inicializar la conexion
	Connection conectar = null;

	// Conectandonos a la base de datos
	public Conexion() {

		try {
			Class.forName(control);
			conectar = DriverManager.getConnection(url, users, contra);

			if (conectar != null) {
			//System.out.println("¡Conectado exitosamente a la base de datos!");
			}
		} catch (Exception e) {
			System.out.println("¡Error al conectarse a la base de datos!" + e.getMessage());
		}
	}

	public Connection Conect() {
		return conectar;
	}

	public void desconectar() {
		conectar = null;
	}

}

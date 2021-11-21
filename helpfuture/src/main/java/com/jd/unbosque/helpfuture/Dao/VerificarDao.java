package com.jd.unbosque.helpfuture.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.jd.unbosque.helpfuture.Conexion.Conexion;
import com.jd.unbosque.helpfuture.Interfaces.VerificarInterface;


public class VerificarDao implements VerificarInterface {
	
	private ResultSet buscar = null;
	private PreparedStatement consulta = null;

	// Llamamos la conexion de la base de datos de la clase conexion
	Conexion conecto = new Conexion();
	Connection conect = conecto.Conect();

	// Creamos las variables
	String read;
	String mensaje;
	long idUser;
	long idEmp;
	
	@Override
	public long verificarU(String user, String pass) {
		
		if (conect != null) {
			read = "SELECT cedulaUsuarios,usuarioUsuarios,passwordUsuarios FROM usuarios WHERE usuarioUsuarios = ? AND passwordUsuarios =?";
			try {
				consulta = conect.prepareStatement(read);
				consulta.setString(1,"%"+user+"%");
				consulta.setString(2,"%"+pass+"%");

				buscar = consulta.executeQuery();

				while (buscar.next()) {
					idUser = buscar.getLong("cedulaUsuario");
				}
				consulta.close();
				conecto.desconectar();
				
				}catch (SQLException e) {
	            	//Si hay un error en el sql mostrarlo
	            	System.out.println("Usuario o contraseÃ±a erradas, intentelo de nuevo.");
	            	System.out.println(e.getMessage());
	            	System.out.println(e.getErrorCode());
		
				} catch (Exception e) {
					//Si hay cualquier otro error en el sql mostrarlo
					mensaje = "Error de conexion";
					System.out.println("error");
					System.out.println(e.getMessage());
		        	System.out.println(e.getLocalizedMessage());
				}
			} else {
			mensaje = "Usuario o contraseÃ±a erradas, intentelo de nuevo.";
		}
		return idUser;
	}
	
	@Override
	public long verificarE(String user, String pass) {
		
		if (conect != null) {
			read = "SELECT numeroIdEmprendedor,usuarioEmprendedor,passwordEmprendedor FROM emprendedores WHERE usuarioEmprendedor = ? AND passwordEmprendedor =?";
			try {
				consulta = conect.prepareStatement(read);
				consulta.setString(1,"%"+user+"%");
				consulta.setString(2,"%"+pass+"%");

				buscar = consulta.executeQuery();

				while (buscar.next()) {
					idEmp = buscar.getLong("numeroIdEmprendedor");
				}
				consulta.close();
				conecto.desconectar();
				}catch (SQLException e) {
	            	//Si hay un error en el sql mostrarlo
	            	System.out.println("Usuario o contraseÃ±a erradas, intentelo de nuevo.");
	            	System.out.println(e.getMessage());
	            	System.out.println(e.getErrorCode());
		
				} catch (Exception e) {
					//Si hay cualquier otro error en el sql mostrarlo
					mensaje = "Error de conexion";
					System.out.println("error");
					System.out.println(e.getMessage());
		        	System.out.println(e.getLocalizedMessage());
				}
		} else {
			mensaje = "Usuario o contraseÃ±a erradas, intentelo de nuevo.";
		}
		return idEmp;
	}
	
	@Override
	public long verificarI(String user, String pass) {
		
		if (conect != null) {
			read = "SELECT identInversor,usuarioInversor,passwordInversor FROM inversores WHERE usuarioInversor = ? AND passwordInversor =?";
			try {
				consulta = conect.prepareStatement(read);
				consulta.setString(1,"%"+user+"%");
				consulta.setString(2,"%"+pass+"%");

				buscar = consulta.executeQuery();

				while (buscar.next()) {
					idEmp = buscar.getLong("identInversor");
				}
				consulta.close();
				conecto.desconectar();
				}catch (SQLException e) {
	            	//Si hay un error en el sql mostrarlo
	            	System.out.println("Usuario o contraseÃ±a erradas, intentelo de nuevo.");
	            	System.out.println(e.getMessage());
	            	System.out.println(e.getErrorCode());
		
				} catch (Exception e) {
					//Si hay cualquier otro error en el sql mostrarlo
					mensaje = "Error de conexion";
					System.out.println("error");
					System.out.println(e.getMessage());
		        	System.out.println(e.getLocalizedMessage());
				}
			
		} else {
			mensaje = "Usuario o contraseÃ±a erradas, intentelo de nuevo.";
		}
		return idEmp;
	}

}

package com.jd.unbosque.helpfuture.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jd.unbosque.helpfuture.Conexion.Conexion;
import com.jd.unbosque.helpfuture.Interfaces.UsuariosInterface;
import com.jd.unbosque.helpfuture.Modelo.UsuariosModelo;

public class UsuariosDao implements UsuariosInterface {

	private ResultSet buscar = null;
	private PreparedStatement consulta = null;

	// Llamamos la conexion de la base de datos de la clase conexion
	Conexion conecto = new Conexion();
	Connection conect = conecto.Conect();

	// Creamos las variables
	String regisDatos;
	String registroDatos;
	String read;
	String reads;
	String mensaje;
	long idUser;

	@Override
	public String crear(UsuariosModelo usuario) {

		if (conect != null) {
			regisDatos = "(cedulaUsuarios,nombreUsuarios,emailUsuarios,celularUsuarios,usuarioUsuarios,passwordUsuarios)";
			registroDatos = "('" + usuario.getCedulaUsuarios() + "'," + "'" + usuario.getNombreUsuarios() + "'," + "'"
					+ usuario.getEmailUsuarios() + "'," + "'" + usuario.getCelularUsuarios() + "'," + "'"
					+ usuario.getUsuarioUsuarios() + "'," + "'" + usuario.getPasswordUsuarios() + "')";

			read = "INSERT INTO usuarios" + regisDatos + "VALUES" + registroDatos;
			try {
				consulta = conect.prepareStatement(read);
				consulta.execute();
				consulta.close();
				conecto.desconectar();
				mensaje = "Usuario creado";
			} catch (Exception e) {
				mensaje = "No se creo el usuario";
			}
		} else {
			mensaje = "Error de conexion";
		}

		return mensaje;

	}

	@Override
	public String modificar(UsuariosModelo usuario) {
		if (conect != null) {
			read = "UPDATE usuarios SET nombreUsuarios= ?," + "emailUsuarios= ?," + "celularUsuarios= ?,"
					+ "usuarioUsuarios= ?," + "passwordUsuarios= ? WHERE cedulaUsuarios= ? ";

			try {
				consulta = conect.prepareStatement(read);
				consulta.setString(1, usuario.getNombreUsuarios());
				consulta.setString(2, usuario.getEmailUsuarios());
				consulta.setLong(3, usuario.getCelularUsuarios());
				consulta.setString(4, usuario.getUsuarioUsuarios());
				consulta.setString(5, usuario.getPasswordUsuarios());
				consulta.setLong(6, usuario.getCedulaUsuarios());

				consulta.executeUpdate();
				consulta.close();
				conecto.desconectar();
				mensaje = "Datos del Usuario Actualizados";
			} catch (SQLException e) {
				// Si hay un error en el sql mostrarlo
				System.out.println("error");
				System.out.println(e.getMessage());
				System.out.println(e.getErrorCode());

			} catch (Exception e) {
				// Si hay cualquier otro error en el sql mostrarlo
				mensaje = "Error de conexion";
				System.out.println("error");
				System.out.println(e.getMessage());
				System.out.println(e.getLocalizedMessage());
			}
		} else {
			mensaje = "No se actualizaron los datos del Usuario";
		}
		return mensaje;

	}

	@Override
	public String eliminar(long ced) {

		boolean validar = false;

		if (conect != null) {
			read = "SELECT * FROM  usuarios WHERE cedulaUsuarios=" + ced;
			try {
				consulta = conect.prepareStatement(read);

				buscar = consulta.executeQuery();

				if (buscar.next()) {
					validar = true;
				} else {
					validar = false;
				}
				buscar.close();

				if (validar == true) {

					reads = "DELETE FROM usuarios WHERE cedulaUsuarios=" + ced;
					consulta = conect.prepareStatement(reads);

					consulta.executeUpdate();
					consulta.close();
					conecto.desconectar();

					mensaje = "Datos del Usuario Borrados";
				} else if (validar == false) {
					mensaje = "Cedula Errada";
				}
				} catch (SQLException e) {
				// Si hay un error en el sql mostrarlo
				System.out.println("error");
				System.out.println(e.getMessage());
				System.out.println(e.getErrorCode());

				} catch (Exception e) {
				// Si hay cualquier otro error en el sql mostrarlo
				mensaje = "Error de conexion";
				System.out.println("error");
				System.out.println(e.getMessage());
				System.out.println(e.getLocalizedMessage());
			}
		} else {
			mensaje = "Cedula Errada";
		}
		return mensaje;
	}

	@Override
	public List<UsuariosModelo> leer() {
		List<UsuariosModelo> mostrar = new ArrayList<>();
		buscar = null;
		read = null;

		if (conect != null) {
			read = "SELECT * FROM usuarios";
			try {
				consulta = conect.prepareStatement(read);
				buscar = consulta.executeQuery();

				while (buscar.next()) {
					UsuariosModelo p = new UsuariosModelo();

					p.setIdUsuarios(buscar.getInt(1));
					p.setCedulaUsuarios(buscar.getLong(2));
					p.setNombreUsuarios(buscar.getString(3));
					p.setEmailUsuarios(buscar.getString(4));
					p.setCelularUsuarios(buscar.getLong(5));
					p.setUsuarioUsuarios(buscar.getString(6));
					p.setPasswordUsuarios(buscar.getString(7));
					mostrar.add(p);
				}

				consulta.close();
				conecto.desconectar();

			} catch (SQLException e) {
				// Si hay un error en el sql mostrarlo
				System.out.println("error");
				System.out.println(e.getMessage());
				System.out.println(e.getErrorCode());

			} catch (Exception e) {
				// Si hay cualquier otro error en el sql mostrarlo
				mensaje = "Error de conexion";
				System.out.println("error");
				System.out.println(e.getMessage());
				System.out.println(e.getLocalizedMessage());
			}
		}
		return mostrar;
	}

}

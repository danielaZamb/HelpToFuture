package com.jd.unbosque.helpfuture.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jd.unbosque.helpfuture.Conexion.Conexion;
import com.jd.unbosque.helpfuture.Interfaces.DetalleProyectoInterface;
import com.jd.unbosque.helpfuture.Modelo.DetalleProyectoModelo;

public class DetalleProyectoDao implements DetalleProyectoInterface {

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
	public String crear(DetalleProyectoModelo detalle) {

		if (conect != null) {
			regisDatos = "(viabilidadProyecto,identProyecto,identEmprendedor,identInversor,identUsuario)";
			registroDatos = "('" + detalle.getViabilidadProyecto() + "'," + "'" + detalle.getIdentProyecto() + "'," + "'"
					+ detalle.getIdentEmprendedor() + "'," + "'" + detalle.getIdentInversor() + "'," + "'"
					+ detalle.getIdentUsuario() + "')"; 

			read = "INSERT INTO detalleproyecto" + regisDatos + "VALUES" + registroDatos;
			try {
				consulta = conect.prepareStatement(read);
				consulta.execute();
				consulta.close();
				conecto.desconectar();
				mensaje = "detalle proyecto creado";
			}catch (SQLException e) {
            	//Si hay un error en el sql mostrarlo
            	System.out.println("error");
            	System.out.println(e.getMessage());
            	System.out.println(e.getErrorCode());
	
			} catch (Exception e) {
				//Si hay cualquier otro error en el sql mostrarlo
				mensaje = "No se crearon los datos del proyecto, intentalo de nuevo";
				System.out.println("error");
				System.out.println(e.getMessage());
	        	System.out.println(e.getLocalizedMessage());
			}
		} else {
			mensaje = "Error de conexion";
		}

		return mensaje;

	}	
	
	@Override
	public List<DetalleProyectoModelo> leer() {
		List<DetalleProyectoModelo> mostrar = new ArrayList<>();
		buscar = null;
		read = null;

		if (conect != null) {
			read = "SELECT * FROM proyecto";
			try {
				consulta = conect.prepareStatement(read);
				buscar = consulta.executeQuery();

				while (buscar.next()) {
					DetalleProyectoModelo p = new DetalleProyectoModelo();
					
					p.setIdDetProyecto(buscar.getInt(1));
					p.setViabilidadProyecto(buscar.getString(2));
					p.setIdentProyecto(buscar.getInt(3));
					p.setIdentEmprendedor(buscar.getInt(4));
					p.setIdentInversor(buscar.getInt(5));
					p.setIdentUsuario(buscar.getInt(6));
					mostrar.add(p);
				}

				consulta.close();
				conecto.desconectar();

			}catch (SQLException e) {
            	//Si hay un error en el sql mostrarlo
            	System.out.println("error");
            	System.out.println(e.getMessage());
            	System.out.println(e.getErrorCode());
	
			} catch (Exception e) {
				//Si hay cualquier otro error en el sql mostrarlo
				mensaje = "No hay datos de los detalles del proyecto, intentalo de nuevo";
				System.out.println("error");
				System.out.println(e.getMessage());
	        	System.out.println(e.getLocalizedMessage());
			}
		}
		return mostrar;
	}
	
}

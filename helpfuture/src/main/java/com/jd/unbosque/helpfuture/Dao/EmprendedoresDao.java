package com.jd.unbosque.helpfuture.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jd.unbosque.helpfuture.Conexion.Conexion;
import com.jd.unbosque.helpfuture.Interfaces.EmprendedoresInterface;
import com.jd.unbosque.helpfuture.Modelo.EmprendedoresModelo;


public class EmprendedoresDao implements EmprendedoresInterface {

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
	public String crear(EmprendedoresModelo emprendedor) {

		if (conect != null) {
			regisDatos = "(numeroIdEmprendedor,nombreEmprendedor,emailEmprendedor,direccionEmprendedor,celularEmprendedor,usuarioEmprendedor,passwordEmprendedor)";
			registroDatos = "('" + emprendedor.getNumeroIdEmprendedor() + "'," + "'" + emprendedor.getNombreEmprendedor() + "'," + "'"
					+ emprendedor.getEmailEmprendedor() + "'," + "'" + emprendedor.getDireccionEmprendedor() + "'," + "'"
					+ emprendedor.getCelularEmprendedor() + "'," + "'"+ emprendedor.getUsuarioEmprendedor() + "'," + "'"
					+ emprendedor.getPasswordEmprendedor() + "')";

			read = "INSERT INTO emprendedores" + regisDatos + "VALUES" + registroDatos;
			try {
				consulta = conect.prepareStatement(read);
				consulta.execute();
				consulta.close();
				conecto.desconectar();
				mensaje = "Emprendedor creado";
			}catch (SQLException e) {
            	//Si hay un error en el sql mostrarlo
            	System.out.println("error");
            	System.out.println(e.getMessage());
            	System.out.println(e.getErrorCode());
	
			} catch (Exception e) {
				//Si hay cualquier otro error en el sql mostrarlo
				mensaje = "No se creo al emprendedor, intentalo de nuevo";
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
	public String modificar(EmprendedoresModelo emprendedor) {
		if (conect != null) {
			read = "UPDATE emprendedores SET nombreEmprendedor= ?," + "emailEmprendedor= ?," + "direccionEmprendedor= ?," + "celularEmprendedor= ?,"
					+ "usuarioEmprendedor= ?,"+ "passwordEmprendedor= ? WHERE numeroIdEmprendedor= ? ";

			try {
				consulta = conect.prepareStatement(read);
				consulta.setString(1, emprendedor.getNombreEmprendedor());
				consulta.setString(2, emprendedor.getEmailEmprendedor());
				consulta.setString(3, emprendedor.getDireccionEmprendedor());
				consulta.setLong(4, emprendedor.getCelularEmprendedor());
				consulta.setString(5, emprendedor.getUsuarioEmprendedor());
				consulta.setString(6, emprendedor.getPasswordEmprendedor());
				consulta.setLong(7, emprendedor.getNumeroIdEmprendedor());

				consulta.executeUpdate();
				consulta.close();
				conecto.desconectar();
				mensaje = "Datos del Emprendedor Actualizados";
			}catch (SQLException e) {
            	//Si hay un error en el sql mostrarlo
            	System.out.println("error");
            	System.out.println(e.getMessage());
            	System.out.println(e.getErrorCode());
	
			} catch (Exception e) {
				//Si hay cualquier otro error en el sql mostrarlo
				mensaje = "No se actualizaron los datos del emprendedor, intentalo de nuevo";
				System.out.println("error");
				System.out.println(e.getMessage());
	        	System.out.println(e.getLocalizedMessage());
			}
		} else {
			mensaje = "No se actualizaron los datos del Emprendedor";
		}
		return mensaje;

	}
	
	@Override
	public String eliminar(long ide) {
		
		boolean validar = false;
		
		if (conect != null) {
            read = "SELECT * FROM emprendedores WHERE numeroIdEmprendedor=?"+ide;
            try {
                consulta = conect.prepareStatement(read);

                buscar = consulta.executeQuery();

                if (buscar.next()) {
                    validar = true;
                } else {
                    validar=false;
                }
                buscar.close();
		
                if (validar == true) {
                    
                	reads = "DELETE FROM emprendedores WHERE numeroIdEmprendedor= ?"+ide;
        			consulta = conect.prepareStatement(reads);

        			consulta.executeUpdate();
        			consulta.close();
        			conecto.desconectar();
        			mensaje = "Datos del emprendedor Borrado";
                } else if (validar == false){
                	mensaje = "Identificacion Errada";
                }
			
            }catch (SQLException e) {
            	//Si hay un error en el sql mostrarlo
            	System.out.println("error");
            	System.out.println(e.getMessage());
            	System.out.println(e.getErrorCode());
	
			} catch (Exception e) {
				//Si hay cualquier otro error en el sql mostrarlo
				mensaje = "No se borraron los datos del emprendedor, intentalo de nuevo";
				System.out.println("error");
				System.out.println(e.getMessage());
	        	System.out.println(e.getLocalizedMessage());
			}
		} else {
			mensaje = "Identificacion Errada";
		}
		return mensaje;
    }
	
	@Override
	public List<EmprendedoresModelo> leer() {
		List<EmprendedoresModelo> mostrar = new ArrayList<>();
		buscar = null;
		read = null;

		if (conect != null) {
			read = "SELECT * FROM emprendedores";
			try {
				consulta = conect.prepareStatement(read);
				buscar = consulta.executeQuery();

				while (buscar.next()) {
					EmprendedoresModelo p = new EmprendedoresModelo();
					
					p.setIdEmprendedor(buscar.getInt(1));
					p.setNumeroIdEmprendedor(buscar.getLong(2));
					p.setNombreEmprendedor(buscar.getString(3));
					p.setEmailEmprendedor(buscar.getString(4));
					p.setDireccionEmprendedor(buscar.getString(5));
					p.setCelularEmprendedor(buscar.getLong(6));
					p.setUsuarioEmprendedor(buscar.getString(7));
					p.setPasswordEmprendedor(buscar.getString(8));
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
				mensaje = "No hay datos del emprendedor, intentalo de nuevo";
				System.out.println("error");
				System.out.println(e.getMessage());
	        	System.out.println(e.getLocalizedMessage());
			}
		}
		return mostrar;
	}
	
}

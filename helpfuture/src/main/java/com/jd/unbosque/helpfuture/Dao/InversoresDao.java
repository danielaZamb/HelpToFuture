package com.jd.unbosque.helpfuture.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jd.unbosque.helpfuture.Conexion.Conexion;
import com.jd.unbosque.helpfuture.Interfaces.InversoresInterface;
import com.jd.unbosque.helpfuture.Modelo.InversoresModelo;


public class InversoresDao implements InversoresInterface {

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
	public String crear(InversoresModelo inversor) {

		if (conect != null) {
			regisDatos = "(identInversor,nombreInversor,emailInversor,direccionInversor,celularInversor,telefonoInversor,usuarioInversor,passwordInversor)";
			registroDatos = "('" + inversor.getIdentInversor() + "'," + "'" + inversor.getNombreInversor() + "'," + "'"
					+ inversor.getEmailInversor() + "'," + "'" + inversor.getDireccionInversor() + "'," + "'"
					+ inversor.getCelularInversor() + "'," + "'" + inversor.getTelefonoInversor() + "'," + "'" 
					+ inversor.getUsuarioInversor() + "'," + "'" + inversor.getPasswordInversor() + "')";

			read = "INSERT INTO inversores" + regisDatos + "VALUES" + registroDatos;
			try {
				consulta = conect.prepareStatement(read);
				consulta.execute();
				consulta.close();
				conecto.desconectar();
				mensaje = "Inversor creado";
			}catch (SQLException e) {
            	//Si hay un error en el sql mostrarlo
            	System.out.println("error");
            	System.out.println(e.getMessage());
            	System.out.println(e.getErrorCode());
	
			} catch (Exception e) {
				//Si hay cualquier otro error en el sql mostrarlo
				mensaje = "Inversor no creado";
				System.out.println("Error");
				System.out.println(e.getMessage());
	        	System.out.println(e.getLocalizedMessage());
			}
		} else {
			mensaje = "Error de conexion";
		}

		return mensaje;

	}
		
	
	
	@Override
	public String modificar(InversoresModelo inversor) {
		if (conect != null) {
			read = "UPDATE inversores SET nombreInversor= ?," + "emailInversor= ?," + "direccionInversor= ?," + "celularInversor= ?,"
					+ "telefonoInversor= ?," + "usuarioInversor= ?,"+ "passwordInversor= ? WHERE identInversor= ? ";

			try {
				consulta = conect.prepareStatement(read);
				consulta.setString(1, inversor.getNombreInversor());
				consulta.setString(2, inversor.getEmailInversor());
				consulta.setString(3, inversor.getDireccionInversor());
				consulta.setLong(4, inversor.getCelularInversor());
				consulta.setLong(5, inversor.getTelefonoInversor());
				consulta.setString(6, inversor.getUsuarioInversor());
				consulta.setString(7, inversor.getPasswordInversor());
				consulta.setLong(8, inversor.getIdentInversor());

				consulta.executeUpdate();
				consulta.close();
				conecto.desconectar();
				mensaje = "Datos del Inversor Actualizados";
			}catch (SQLException e) {
            	//Si hay un error en el sql mostrarlo
            	System.out.println("error");
            	System.out.println(e.getMessage());
            	System.out.println(e.getErrorCode());
	
			} catch (Exception e) {
				//Si hay cualquier otro error en el sql mostrarlo
				mensaje = "No se actualizaron los datos del inversor, intentalo de nuevo";
				System.out.println("error");
				System.out.println(e.getMessage());
	        	System.out.println(e.getLocalizedMessage());
			}
		} else {
			mensaje = "No se actualizaron los datos del Inversor";
		}
		return mensaje;

	}
	
	@Override
	public String eliminar(long iden) {
		
		boolean validar = false;
		
		if (conect != null) {
            read = "SELECT * FROM inversores WHERE identInversor=?"+iden;
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
                    
                	reads = "DELETE FROM inversores WHERE identInversor= ?"+iden;
        			consulta = conect.prepareStatement(reads);

        			consulta.executeUpdate();
        			consulta.close();
        			conecto.desconectar();
        			mensaje = "Datos del Inversor Borrados";
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
				mensaje = "No se borraron los datos del inversor, intentalo de nuevo";
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
	public List<InversoresModelo> leer() {
		List<InversoresModelo> mostrar = new ArrayList<>();
		buscar = null;
		read = null;

		if (conect != null) {
			read = "SELECT * FROM inversores";
			try {
				consulta = conect.prepareStatement(read);
				buscar = consulta.executeQuery();

				while (buscar.next()) {
					InversoresModelo p = new InversoresModelo();
					
					p.setIdInversor(buscar.getInt(1));
					p.setIdentInversor(buscar.getLong(2));
					p.setNombreInversor(buscar.getString(3));
					p.setEmailInversor(buscar.getString(4));
					p.setDireccionInversor(buscar.getString(5));
					p.setCelularInversor(buscar.getLong(6));
					p.setTelefonoInversor(buscar.getLong(7));
					p.setUsuarioInversor(buscar.getString(8));
					p.setPasswordInversor(buscar.getString(9));
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
				mensaje = "No hay datos del inversor, intentalo de nuevo";
				System.out.println("error");
				System.out.println(e.getMessage());
	        	System.out.println(e.getLocalizedMessage());
			}
		}
		return mostrar;
	}
	
}

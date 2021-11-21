package com.jd.unbosque.helpfuture.Dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jd.unbosque.helpfuture.Conexion.Conexion;
import com.jd.unbosque.helpfuture.Interfaces.ProyectoInterface;
import com.jd.unbosque.helpfuture.Modelo.ProyectoModelo;

public class ProyectoDao implements ProyectoInterface {

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
	public String crear(ProyectoModelo proyecto) {

		if (conect != null) {
			regisDatos = "(nombreProyecto,descripcionProyecto,categoriaProyecto,valorProyecto,tiempoProyecto,colaboradorProyecto)";
			registroDatos = "('" + proyecto.getNombreProyecto() + "'," + "'" + proyecto.getDescripcionProyecto() + "'," + "'"
					+ proyecto.getCategoriaProyecto() + "'," + "'" + proyecto.getValorProyecto() + "'," + "'"
					+ proyecto.getTiempoProyecto() + "'," + "'"+ proyecto.getColaboradorProyecto() + "')"; 

			read = "INSERT INTO proyecto" + regisDatos + "VALUES" + registroDatos;
			try {
				consulta = conect.prepareStatement(read);
				consulta.execute();
				consulta.close();
				conecto.desconectar();
				mensaje = "proyecto creado";
			}catch (SQLException e) {
            	//Si hay un error en el sql mostrarlo
            	System.out.println("No se creo el proyecto.");
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
			mensaje = "Error de conexion";
		}

		return mensaje;

	}
		
	
	
	@Override
	public String modificar(ProyectoModelo proyecto) {
		if (conect != null) {
			read = "UPDATE proyecto SET nombreProyecto= ?," + "descripcionProyecto= ?," + "categoriaProyecto= ?," + "valorProyecto= ?,"
					+ "tiempoProyecto= ?,"+ "colaboradorProyecto= ? WHERE idProyecto= ? ";

			try {
				consulta = conect.prepareStatement(read);
				consulta.setString(1, proyecto.getNombreProyecto());
				consulta.setString(2, proyecto.getDescripcionProyecto());
				consulta.setString(3, proyecto.getCategoriaProyecto());
				consulta.setDouble(3, proyecto.getValorProyecto());
				consulta.setString(5, proyecto.getTiempoProyecto());
				consulta.setString(6, proyecto.getColaboradorProyecto());
				consulta.setInt(7, proyecto.getIdProyecto());

				consulta.executeUpdate();
				consulta.close();
				conecto.desconectar();
				mensaje = "Datos del proyecto Actualizados";
				}catch (SQLException e) {
	            	//Si hay un error en el sql mostrarlo
	            	System.out.println("No se actualizaron los datos del proyecto.");
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
			mensaje = "No se actualizaron los datos del proyecto";
		}
		return mensaje;

	}
	
	@Override
	public String eliminar(int ident) {
		
		boolean validar = false;
		
		if (conect != null) {
            read = "SELECT * FROM proyecto WHERE idProyecto="+ident;
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
                    
                	reads = "DELETE FROM proyecto WHERE idProyecto="+ident;
        			consulta = conect.prepareStatement(reads);
        			

        			consulta.executeUpdate();
        			consulta.close();
        			conecto.desconectar();
        			mensaje = "Datos del proyecto Borrado";
                } else if (validar == false){
                	mensaje = "Identificacion Errada";
                }
			
	            }catch (SQLException e) {
	            	//Si hay un error en el sql mostrarlo
	            	System.out.println("No se pudo borrar el proyecto, intentelo de nuevo.");
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
			mensaje = "Identificacion Errada";
		}
		return mensaje;
    }
	
	@Override
	public List<ProyectoModelo> leer() {
		List<ProyectoModelo> mostrar = new ArrayList<>();
		buscar = null;
		read = null;

		if (conect != null) {
			read = "SELECT * FROM proyecto";
			try {
				consulta = conect.prepareStatement(read);
				buscar = consulta.executeQuery();

				while (buscar.next()) {
					ProyectoModelo p = new ProyectoModelo();
					
					p.setIdProyecto(buscar.getInt(1));
					p.setNombreProyecto(buscar.getString(2));
					p.setDescripcionProyecto(buscar.getString(3));
					p.setCategoriaProyecto(buscar.getString(4));
					p.setValorProyecto(buscar.getDouble(5));
					p.setTiempoProyecto(buscar.getString(6));
					p.setColaboradorProyecto(buscar.getString(7));
					mostrar.add(p);
				}

				consulta.close();
				conecto.desconectar();

			}catch (SQLException e) {
            	//Si hay un error en el sql mostrarlo
            	System.out.println("No hay proyectos, intentelo de nuevo.");
            	System.out.println(e.getMessage());
            	System.out.println(e.getErrorCode());
	
			} catch (Exception e) {
				//Si hay cualquier otro error en el sql mostrarlo
				mensaje = "Error de conexion";
				System.out.println("error");
				System.out.println(e.getMessage());
	        	System.out.println(e.getLocalizedMessage());
			}
		}
		return mostrar;
	}
	
}

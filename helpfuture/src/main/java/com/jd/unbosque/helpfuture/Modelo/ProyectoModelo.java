package com.jd.unbosque.helpfuture.Modelo;

import java.io.Serializable;

public class ProyectoModelo implements Serializable {

	// Identificador unico de las clases entidad
	private static final long serialVersionUID = 1L;
	
	private int idProyecto;
	private String nombreProyecto;
	private String descripcionProyecto;
	private String categoriaProyecto;
	private double valorProyecto;
	private String tiempoProyecto;
	private String colaboradorProyecto;
	
	public ProyectoModelo() {
		
	}
	
	//Se crea la clase constructor

	public ProyectoModelo(int idProyecto, String nombreProyecto, String descripcionProyecto, String categoriaProyecto,
			double valorProyecto, String tiempoProyecto, String colaboradorProyecto) {
		this.idProyecto = idProyecto;
		this.nombreProyecto = nombreProyecto;
		this.descripcionProyecto = descripcionProyecto;
		this.categoriaProyecto = categoriaProyecto;
		this.valorProyecto = valorProyecto;
		this.tiempoProyecto = tiempoProyecto;
		this.colaboradorProyecto = colaboradorProyecto;
	}

	/**
	 * Metodos que permiten ver el valor del id
	 * @return the idProyecto
	 */
	public int getIdProyecto() {
		return idProyecto;
	}

	/**
	 * Metodos que permite el cambio del id
	 * @param the idProyecto to set
	 */
	public void setIdProyecto(int idProyecto) {
		this.idProyecto = idProyecto;
	}
	
	/**
	 * Metodos que permiten ver el valor del nombre
	 * @return the nombreProyecto
	 */
	
	public String getNombreProyecto() {
		return nombreProyecto;
	}

	/**
	 * Metodos que permite el cambio del nombre
	 * @param the nombreProyecto to set
	 */
	public void setNombreProyecto(String nombreProyecto) {
		this.nombreProyecto = nombreProyecto;
	}

	/**
	 * Metodos que permiten ver el valor de la descripcion
	 * @return the descripcionProyecto
	 */
	public String getDescripcionProyecto() {
		return descripcionProyecto;
	}

	/**
	 * Metodos que permite el cambio de la descripcion
	 * @param the descripcionProyecto to set
	 */
	public void setDescripcionProyecto(String descripcionProyecto) {
		this.descripcionProyecto = descripcionProyecto;
	}

	/**
	 * Metodos que permiten ver el valor de la categoria
	 * @return the categoriaProyecto
	 */
	public String getCategoriaProyecto() {
		return categoriaProyecto;
	}

	/**
	 * Metodos que permite el cambio de la categoria
	 * @param the categoriaProyecto to set
	 */
	public void setCategoriaProyecto(String categoriaProyecto) {
		this.categoriaProyecto = categoriaProyecto;
	}

	/**
	 * Metodos que permiten ver el valor del proyecto
	 * @return the valorProyecto
	 */
	public double getValorProyecto() {
		return valorProyecto;
	}

	/**
	 * Metodos que permite el cambio del valor
	 * @param the valorProyecto to set
	 */
	public void setValorProyecto(double valorProyecto) {
		this.valorProyecto = valorProyecto;
	}

	/**
	 * Metodos que permiten ver el valor del tiempo 
	 * @return the tiempoProyecto
	 */
	public String getTiempoProyecto() {
		return tiempoProyecto;
	}

	/**
	 * Metodos que permite el cambio del tiempo
	 * @param the tiempoProyecto to set
	 */
	public void setTiempoProyecto(String tiempoProyecto) {
		this.tiempoProyecto = tiempoProyecto;
	}

	/**
	 * Metodos que permiten ver el valor del colaborador
	 * @return the colaboradorProyecto
	 */
	public String getColaboradorProyecto() {
		return colaboradorProyecto;
	}

	/**
	 * Metodos que permite el cambio del colaborador
	 * @param the colaboradorProyecto to set
	 */
	public void setColaboradorProyecto(String colaboradorProyecto) {
		this.colaboradorProyecto = colaboradorProyecto;
	}	
}

package com.jd.unbosque.helpfuture.Modelo;

import java.io.Serializable;

public class DetalleProyectoModelo implements Serializable {

	// Identificador unico de las clases entidad
	private static final long serialVersionUID = 1L;
	
	private int idDetProyecto;
	private String viabilidadProyecto;
	private int identProyecto;
	private int identEmprendedor;
	private int identInversor;
	private int identUsuario;
	
	public DetalleProyectoModelo() {
		
	}
	
	//Se crea la clase constructor

	public DetalleProyectoModelo(int idDetProyecto, String viabilidadProyecto, int identProyecto, int identEmprendedor,
			int identInversor, int identUsuario) {
		this.idDetProyecto = idDetProyecto;
		this.viabilidadProyecto = viabilidadProyecto;
		this.identProyecto = identProyecto;
		this.identEmprendedor = identEmprendedor;
		this.identInversor = identInversor;
		this.identUsuario = identUsuario;
	}
	
	/**
	 * Metodos que permiten ver el valor del id
	 * @return the idDetProyecto
	 */
	public int getIdDetProyecto() {
		return idDetProyecto;
	}

	/**
	 * Metodos que permite el cambio del id
	 * @param the idDetProyecto to set
	 */
	public void setIdDetProyecto(int idDetProyecto) {
		this.idDetProyecto = idDetProyecto;
	}

	/**
	 * Metodos que permiten ver el valor de la viabilidad
	 * @return the viabilidadProyecto
	 */
	public String getViabilidadProyecto() {
		return viabilidadProyecto;
	}

	/**
	 * Metodos que permite el cambio de la viabilidad
	 * @param the viabilidadProyecto to set
	 */
	public void setViabilidadProyecto(String viabilidadProyecto) {
		this.viabilidadProyecto = viabilidadProyecto;
	}

	/**
	 * Metodos que permiten ver el valor del ident
	 * @return the identProyecto
	 */
	public int getIdentProyecto() {
		return identProyecto;
	}

	/**
	 * Metodos que permite el cambio del ident
	 * @param the identProyecto to set
	 */
	public void setIdentProyecto(int identProyecto) {
		this.identProyecto = identProyecto;
	}

	/**
	 * Metodos que permiten ver el valor del ident
	 * @return the identEmprendedor
	 */
	public int getIdentEmprendedor() {
		return identEmprendedor;
	}

	/**
	 * Metodos que permite el cambio del ident
	 * @param the identEmprendedor to set
	 */
	public void setIdentEmprendedor(int identEmprendedor) {
		this.identEmprendedor = identEmprendedor;
	}

	/**
	 * Metodos que permiten ver el valor del ident
	 * @return the identInversor
	 */
	public int getIdentInversor() {
		return identInversor;
	}

	/**
	 * Metodos que permite el cambio del ident
	 * @param the identInversor to set
	 */
	public void setIdentInversor(int identInversor) {
		this.identInversor = identInversor;
	}

	/**
	 * Metodos que permiten ver el valor del ident
	 * @return the identUsuario
	 */
	public int getIdentUsuario() {
		return identUsuario;
	}

	/**
	 * Metodos que permite el cambio del ident
	 * @param the identUsuario to set
	 */
	public void setIdentUsuario(int identUsuario) {
		this.identUsuario = identUsuario;
	}
}

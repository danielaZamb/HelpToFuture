package com.jd.unbosque.helpfuture.Modelo;

import java.io.Serializable;

public class InversoresModelo implements Serializable {

	// Identificador unico de las clases entidad
	private static final long serialVersionUID = 1L;

	private int idInversor;
	private long identInversor;
	private String nombreInversor;
	private String emailInversor;
	private String direccionInversor;
	private long celularInversor;
	private long telefonoInversor;
	private String usuarioInversor;
	private String passwordInversor;

	public InversoresModelo() {

	}

	// Se crea la clase constructor
	public InversoresModelo(int idInversor, long identInversor,String nombreInversor, String emailInversor, String direccionInversor,
			long celularInversor, long telefonoInversor, String usuarioInversor, String passwordInversor) {
		this.idInversor = idInversor;
		this.identInversor = identInversor;
		this.nombreInversor = nombreInversor;
		this.emailInversor = emailInversor;
		this.direccionInversor = direccionInversor;
		this.celularInversor = celularInversor;
		this.telefonoInversor = telefonoInversor;
		this.usuarioInversor = usuarioInversor;
		this.passwordInversor = passwordInversor;
	}
	
		
	/**
	 * Metodos que permiten ver el valor del id
	 * @return the idInversor
	 */
	public int getIdInversor() {
		return idInversor;
	}


	/**
	 * Metodos que permite el cambio del id
	 * @param the idInversor to set
	 */
	public void setIdInversor(int idInversor) {
		this.idInversor = idInversor;
	}

	/**
	 * Metodos que permiten ver el valor del ident
	 * @return the identInversor
	 */
	public long getIdentInversor() {
		return identInversor;
	}


	/**
	 * Metodos que permite el cambio del ident
	 * @param the identInversor to set
	 */
	public void setIdentInversor(long identInversor) {
		this.identInversor = identInversor;
	}
	
	/**
	 * Metodos que permiten ver el valor del nombre
	 * @return the nombreInversor
	 */
	public String getNombreInversor() {
		return nombreInversor;
	}

	/**
	 * Metodos que permite el cambio del nombre
	 * @param the nombreInversor to set
	 */
	public void setNombreInversor(String nombreInversor) {
		this.nombreInversor = nombreInversor;
	}

	/**
	 * Metodos que permiten ver el valor del email
	 * @return the emailInversor
	 */
	public String getEmailInversor() {
		return emailInversor;
	}

	/**
	 * Metodos que permite el cambio del email
	 * @param the emailInversor to set
	 */
	public void setEmailInversor(String emailInversor) {
		this.emailInversor = emailInversor;
	}

	/**
	 * Metodos que permiten ver el valor de la direccion
	 * @return the direccionInversor
	 */
	public String getDireccionInversor() {
		return direccionInversor;
	}

	/**
	 * Metodos que permite el cambio de la direccion
	 * @param the direccionInversor to set
	 */
	public void setDireccionInversor(String direccionInversor) {
		this.direccionInversor = direccionInversor;
	}

	/**
	 * Metodos que permiten ver el valor del celular
	 * @return the celularInversor
	 */
	public long getCelularInversor() {
		return celularInversor;
	}

	/**
	 * Metodos que permite el cambio del celular
	 * @param the celularInversor to set
	 */
	public void setCelularInversor(long celularInversor) {
		this.celularInversor = celularInversor;
	}
	
	/**
	 * Metodos que permiten ver el valor del telefono
	 * @return the telefonoInversor
	 */
	public long getTelefonoInversor() {
		return telefonoInversor;
	}

	/**
	 * Metodos que permite el cambio del telefono
	 * @param the telefonoInversor to set
	 */
	public void setTelefonoInversor(long telefonoInversor) {
		this.telefonoInversor = telefonoInversor;
	}

	/**
	 * Metodos que permiten ver el valor del usuario
	 * @return the usuarioInversor
	 */
	public String getUsuarioInversor() {
		return usuarioInversor;
	}

	/**
	 * Metodos que permite el cambio del usuario
	 * @param the usuarioEmprendedor to set
	 */
	public void setUsuarioInversor(String usuarioInversor) {
		this.usuarioInversor = usuarioInversor;
	}

	/**
	 * Metodos que permiten ver el valor del password
	 * @return the passwordEmprendedor
	 */
	public String getPasswordInversor() {
		return passwordInversor;
	}

	/**
	 * Metodos que permite el cambio del password
	 * @param the passwordEmprendedor to set
	 */
	public void setPasswordInversor(String passwordInversor) {
		this.passwordInversor = passwordInversor;
	}

}

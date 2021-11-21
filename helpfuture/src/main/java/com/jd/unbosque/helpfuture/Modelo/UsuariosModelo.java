package com.jd.unbosque.helpfuture.Modelo;

import java.io.Serializable;

//Todas las clases entidad deben ser serializables y deben estar encapsuladas
public class UsuariosModelo implements Serializable {

	// Identificador unico de las clases entidad
	private static final long serialVersionUID = 1L;
	
	private int idUsuarios;
	private long cedulaUsuarios;
	private String nombreUsuarios;
	private String emailUsuarios;
	private long celularUsuarios;
	private String usuarioUsuarios;
	private String passwordUsuarios;
	
	public UsuariosModelo (){
		
	}
	
	//Se crea el Constructor
	public UsuariosModelo(int idUsuarios, long cedulaUsuarios, String nombreUsuarios, String emailUsuarios,
			long celularUsuarios, String usuarioUsuarios, String passwordUsuarios) {
		this.idUsuarios = idUsuarios;
		this.cedulaUsuarios = cedulaUsuarios;
		this.nombreUsuarios = nombreUsuarios;
		this.emailUsuarios = emailUsuarios;
		this.celularUsuarios = celularUsuarios;
		this.usuarioUsuarios = usuarioUsuarios;
		this.passwordUsuarios = passwordUsuarios;
	}
	
	/**
	 * Metodos que permiten ver los diferentes valores del id
	 * @return the idUsuarios
	 */
	public int getIdUsuarios() {
		return idUsuarios;
	}


	/**
	 * Metodos que permite el cambio del id
	 * @param the idUsuarios to set
	 */
	public void setIdUsuarios(int idUsuarios) {
		this.idUsuarios = idUsuarios;
	}
	
	/**
	 * Metodos que permiten ver los diferentes valores de la cedula
	 * @return the cedulaUsuarios
	 */
	public long getCedulaUsuarios() {
		return cedulaUsuarios;
	}

	/**
	 * Metodos que permite el cambio de la cedula
	 * @param the cedulaUsuarios to set
	 */
	public void setCedulaUsuarios(long cedulaUsuarios) {
		this.cedulaUsuarios = cedulaUsuarios;
	}

	/**
	 * Metodos que permiten ver los diferentes valores del nombre
	 * @return the nombreUsuarios
	 */
	public String getNombreUsuarios() {
		return nombreUsuarios;
	}

	/**
	 * Metodos que permite el cambio del nombre
	 * @param the nombreUsuarios to set
	 */
	public void setNombreUsuarios(String nombreUsuarios) {
		this.nombreUsuarios = nombreUsuarios;
	}

	/**
	 * Metodos que permiten ver los diferentes valores del email
	 * @return the emailUsuarios
	 */
	public String getEmailUsuarios() {
		return emailUsuarios;
	}

	/**
	 * Metodos que permite el cambio del email
	 * @param the emailUsuarios to set
	 */
	public void setEmailUsuarios(String emailUsuarios) {
		this.emailUsuarios = emailUsuarios;
	}

	/**
	 * Metodos que permiten ver los diferentes valores del celular
	 * @return the celularUsuarios
	 */
	public long getCelularUsuarios() {
		return celularUsuarios;
	}
	
	/**
	 * Metodos que permite el cambio del celular
	 * @param the celularUsuarios to set
	 */
	public void setCelularUsuarios(long celularUsuarios) {
		this.celularUsuarios = celularUsuarios;
	}

	/**
	 * Metodos que permiten ver los diferentes valores del usuario
	 * @return the usuarioUsuarios
	 */
	public String getUsuarioUsuarios() {
		return usuarioUsuarios;
	}

	/**
	 * Metodos que permite el cambio del usuario
	 * @param the usuarioUsuarios to set
	 */
	public void setUsuarioUsuarios(String usuarioUsuarios) {
		this.usuarioUsuarios = usuarioUsuarios;
	}
	
	/**
	 * Metodos que permiten ver los diferentes valores de la contrasena
	 * @return the passwordUsuarios
	 */
	public String getPasswordUsuarios() {
		return passwordUsuarios;
	}

	/**
	 * Metodos que permiten el cambio de la contrasena
	 * @param the passwordUsuarios to set
	 */
	public void setPasswordUsuarios(String passwordUsuarios) {
		this.passwordUsuarios = passwordUsuarios;
	}
}

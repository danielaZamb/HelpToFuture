package com.jd.unbosque.helpfuture.Modelo;

import java.io.Serializable;

public class EmprendedoresModelo implements Serializable {

	// Identificador unico de las clases entidad
	private static final long serialVersionUID = 1L;
	
	private int idEmprendedor;
	private long numeroIdEmprendedor;
	private String nombreEmprendedor;
	private String emailEmprendedor;
	private String direccionEmprendedor;
	private long celularEmprendedor;
	private String usuarioEmprendedor;
	private String passwordEmprendedor;
	
	public EmprendedoresModelo() {
		
	}
	
	//Se crea la clase constructor
	public EmprendedoresModelo(int idEmprendedor, long numeroIdEmprendedor, String nombreEmprendedor,
			String emailEmprendedor, String direccionEmprendedor, long celularEmprendedor, String usuarioEmprendedor,
			String passwordEmprendedor) {
		this.idEmprendedor = idEmprendedor;
		this.numeroIdEmprendedor = numeroIdEmprendedor;
		this.nombreEmprendedor = nombreEmprendedor;
		this.emailEmprendedor = emailEmprendedor;
		this.direccionEmprendedor = direccionEmprendedor;
		this.celularEmprendedor = celularEmprendedor;
		this.usuarioEmprendedor = usuarioEmprendedor;
		this.passwordEmprendedor = passwordEmprendedor;
	}

	/**
	 * Metodos que permiten ver el valor del id
	 * @return the idEmprendedor
	 */
	public int getIdEmprendedor() {
		return idEmprendedor;
	}

	/**
	 * Metodos que permite el cambio del id
	 * @param the idEmprendedor to set
	 */
	public void setIdEmprendedor(int idEmprendedor) {
		this.idEmprendedor = idEmprendedor;
	}
	
	/**
	 * Metodos que permiten ver el valor del numero del Id
	 * @return the numeroIdEmprendedor
	 */
	public long getNumeroIdEmprendedor() {
		return numeroIdEmprendedor;
	}

	/**
	 * Metodos que permite el cambio del numero de id
	 * @param the numeroIdEmprendedor to set
	 */
	public void setNumeroIdEmprendedor(long numeroIdEmprendedor) {
		this.numeroIdEmprendedor = numeroIdEmprendedor;
	}

	/**
	 * Metodos que permiten ver el valor del nombre
	 * @return the nombreEmprendedor
	 */
	public String getNombreEmprendedor() {
		return nombreEmprendedor;
	}

	/**
	 * Metodos que permite el cambio del nombre
	 * @param the nombreEmprendedor to set
	 */
	public void setNombreEmprendedor(String nombreEmprendedor) {
		this.nombreEmprendedor = nombreEmprendedor;
	}

	/**
	 * Metodos que permiten ver el valor del email
	 * @return the emailEmprendedor
	 */
	public String getEmailEmprendedor() {
		return emailEmprendedor;
	}

	/**
	 * Metodos que permite el cambio del email
	 * @param the emailEmprendedor to set
	 */
	public void setEmailEmprendedor(String emailEmprendedor) {
		this.emailEmprendedor = emailEmprendedor;
	}
	
	/**
	 * Metodos que permiten ver el valor de la direccion
	 * @return the direccionEmprendedor
	 */
	public String getDireccionEmprendedor() {
		return direccionEmprendedor;
	}

	/**
	 * Metodos que permite el cambio de la direccion
	 * @param the direccionEmprendedor to set
	 */
	public void setDireccionEmprendedor(String direccionEmprendedor) {
		this.direccionEmprendedor = direccionEmprendedor;
	}

	/**
	 * Metodos que permiten ver el valor del celular
	 * @return the celularEmprendedor
	 */
	public long getCelularEmprendedor() {
		return celularEmprendedor;
	}

	/**
	 * Metodos que permite el cambio del celular
	 * @param the celularEmprendedor to set
	 */
	public void setCelularEmprendedor(long celularEmprendedor) {
		this.celularEmprendedor = celularEmprendedor;
	}
	
	/**
	 * Metodos que permiten ver el valor del usuario
	 * @return the usuarioEmprendedor
	 */
	public String getUsuarioEmprendedor() {
		return usuarioEmprendedor;
	}

	/**
	 * Metodos que permite el cambio del usuario
	 * @param the usuarioEmprendedor to set
	 */
	public void setUsuarioEmprendedor(String usuarioEmprendedor) {
		this.usuarioEmprendedor = usuarioEmprendedor;
	}

	/**
	 * Metodos que permiten ver el valor del password
	 * @return the passwordEmprendedor
	 */
	public String getPasswordEmprendedor() {
		return passwordEmprendedor;
	}

	/**
	 * Metodos que permite el cambio del password
	 * @param the passwordEmprendedor to set
	 */
	public void setPasswordEmprendedor(String passwordEmprendedor) {
		this.passwordEmprendedor = passwordEmprendedor;
	}
}

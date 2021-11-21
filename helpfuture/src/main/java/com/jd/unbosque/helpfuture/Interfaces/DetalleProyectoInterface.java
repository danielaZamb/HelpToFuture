package com.jd.unbosque.helpfuture.Interfaces;

import java.util.List;

import com.jd.unbosque.helpfuture.Modelo.DetalleProyectoModelo;


public interface DetalleProyectoInterface {

	public String crear(DetalleProyectoModelo detalle);

	public List<DetalleProyectoModelo> leer();

}

package com.jd.unbosque.helpfuture.Interfaces;

import java.util.List;

import com.jd.unbosque.helpfuture.Modelo.ProyectoModelo;


public interface ProyectoInterface {

	public String crear(ProyectoModelo proyecto);

	public String modificar(ProyectoModelo proyecto);

	public String eliminar(int ident);

	public List<ProyectoModelo> leer();

}

package com.jd.unbosque.helpfuture.Interfaces;

import java.util.List;

import com.jd.unbosque.helpfuture.Modelo.EmprendedoresModelo;


public interface EmprendedoresInterface {

	public String crear(EmprendedoresModelo emprendedor);

	public String modificar(EmprendedoresModelo emprendedor);

	public String eliminar(long ide);

	public List<EmprendedoresModelo> leer();

}

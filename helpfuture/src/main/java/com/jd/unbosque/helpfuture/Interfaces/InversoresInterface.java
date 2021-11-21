package com.jd.unbosque.helpfuture.Interfaces;

import java.util.List;
import com.jd.unbosque.helpfuture.Modelo.InversoresModelo;


public interface InversoresInterface {

	public String crear(InversoresModelo usuario);

	public String modificar(InversoresModelo usuario);

	public String eliminar(long iden);

	public List<InversoresModelo> leer();

}

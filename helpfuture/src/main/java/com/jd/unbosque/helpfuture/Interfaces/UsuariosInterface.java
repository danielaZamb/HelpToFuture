package com.jd.unbosque.helpfuture.Interfaces;

import java.util.List;
import com.jd.unbosque.helpfuture.Modelo.UsuariosModelo;

public interface UsuariosInterface {

	public String crear(UsuariosModelo usuario);

	public String modificar(UsuariosModelo usuario);

	public String eliminar(long ced);

	public List<UsuariosModelo> leer();

}

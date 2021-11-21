package com.jd.unbosque.helpfuture.BO;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jd.unbosque.helpfuture.Dto.Dto;
import com.jd.unbosque.helpfuture.Modelo.ProyectoModelo;

@RestController
public class ControlProyecto {
	
	Dto dt= new Dto();
	
	//insertar o agregar
	@PostMapping("/registrarproyecto")
	public void registrarProyecto(ProyectoModelo proyecto) {
		dt.getPro().crear(proyecto);
	}
	
	//Obtener o buscar
	@GetMapping("/listarproyecto")
	public List<ProyectoModelo> leer(){
	return dt.getPro().leer();
	}
	
	//Eliminar o borrar
	@DeleteMapping("/eliminarproyecto")
	public void eliminarProyecto(int ident) {
		dt.getPro().eliminar(ident);
	}
	
	//Modificar o actualizar
	@PutMapping("/actualizarproyecto")
	public void actualizarProyecto(ProyectoModelo proyecto) {
		dt.getPro().modificar(proyecto);
	}
}

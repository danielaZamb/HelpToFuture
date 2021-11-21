package com.jd.unbosque.helpfuture.BO;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jd.unbosque.helpfuture.Dto.Dto;
import com.jd.unbosque.helpfuture.Modelo.EmprendedoresModelo;

@RestController
public class ControlEmprendedor {
	
	Dto dt= new Dto();
	
	//insertar o agregar
	@PostMapping("/registraremprendedor")
	public void registrarEmprendedor(EmprendedoresModelo emprendedor) {
		dt.getEmp().crear(emprendedor);
	}
	
	//Obtener o buscar
	@GetMapping("/listaremprendedor")
	public List<EmprendedoresModelo> leer(){
	return dt.getEmp().leer();
	}
	
	//Eliminar o borrar
	@DeleteMapping("/eliminaremprendedor")
	public void eliminarEmprendedor(long ide) {
		dt.getEmp().eliminar(ide);
	}
	
	//Modificar o actualizar
	@PutMapping("/actualizaremprendedor")
	public void actualizarEmprendedor(EmprendedoresModelo emprendedor) {
		dt.getEmp().modificar(emprendedor);
	}
}

package com.jd.unbosque.helpfuture.BO;

import java.util.List;

import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RestController;

import com.jd.unbosque.helpfuture.Dto.Dto;
import com.jd.unbosque.helpfuture.Modelo.InversoresModelo;

@RestController
public class ControlInversor {
	
	Dto dt= new Dto();
	
	//insertar o agregar
	@PostMapping("/registrarinversor")
	public void registrarInversor(InversoresModelo inversor) {
		dt.getInv().crear(inversor);
	}
	
	//Obtener o buscar
	@GetMapping("/listarinversor")
	public List<InversoresModelo> leer(){
	return dt.getInv().leer();
	}
	
	//Eliminar o borrar
	@DeleteMapping("/eliminarinversor")
	public void eliminarInversor(long iden) {
		dt.getInv().eliminar(iden);
	}
	
	//Modificar o actualizar
	@PutMapping("/actualizarinversor")
	public void actualizarInversor(InversoresModelo inversor) {
		dt.getInv().modificar(inversor);
	}
}

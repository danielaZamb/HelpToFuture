package com.jd.unbosque.helpfuture.Dto;

import com.jd.unbosque.helpfuture.Dao.DetalleProyectoDao;
import com.jd.unbosque.helpfuture.Dao.EmprendedoresDao;
import com.jd.unbosque.helpfuture.Dao.InversoresDao;
import com.jd.unbosque.helpfuture.Dao.ProyectoDao;
import com.jd.unbosque.helpfuture.Dao.UsuariosDao;
import com.jd.unbosque.helpfuture.Dao.VerificarDao;

public class Dto {

	UsuariosDao user = new UsuariosDao();
	VerificarDao veri = new VerificarDao();
	InversoresDao inv = new InversoresDao();
	EmprendedoresDao emp = new EmprendedoresDao();
	ProyectoDao pro = new ProyectoDao();
	DetalleProyectoDao det = new DetalleProyectoDao();
	
	
	public UsuariosDao getUser() {
		return user;
	}
	public void setUser(UsuariosDao user) {
		this.user = user;
	}
	public VerificarDao getVeri() {
		return veri;
	}
	public void setVeri(VerificarDao veri) {
		this.veri = veri;
	}
	public InversoresDao getInv() {
		return inv;
	}
	public void setInv(InversoresDao inv) {
		this.inv = inv;
	}
	public EmprendedoresDao getEmp() {
		return emp;
	}
	public void setEmp(EmprendedoresDao emp) {
		this.emp = emp;
	}
	public ProyectoDao getPro() {
		return pro;
	}
	public void setPro(ProyectoDao pro) {
		this.pro = pro;
	}
	public DetalleProyectoDao getDet() {
		return det;
	}
	public void setDet(DetalleProyectoDao det) {
		this.det = det;
	}

	
}

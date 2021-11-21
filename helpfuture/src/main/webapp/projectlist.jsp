<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width">
<link rel="shortcut icon" href="assets/images/iconlogo.png" type="image/x-icon">
<title>Proyectos</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
<link href="assets/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="assets/datatables/dataTables.jqueryui.css" />
<link rel="stylesheet" href="assets/datatables/responsive.dataTables.min.css" />
<link rel="stylesheet" href="assets/datatables/responsive.jqueryui.min.css" />
</head>
<body class="vh-100 bg-project">

	<nav class="navbar navbar-expand-lg navbar-nav-scroll navbar-light">
  	<div class="container-fluid">
    	<a class="navbar-brand" href="inicio.jsp">
    	<img src="assets/images/iconlogo.png" alt="imagenlogo" width="90" height="73" class="d-inline-block align-text-top fx-1"></a>
     
    	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      		<span class="navbar-toggler-icon"></span>
    	</button>
  			<div class="collapse navbar-collapse" id="navbarNavDropdown">
	      <ul class="navbar-nav nav-tabs">
          <li class="nav-item">
	          <a class="title-color text-decoration-none fs-3 px-2 disabled" aria-current="page" href="inicio.jsp">HelpToFuture</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" aria-current="page" href="inicio.jsp">Inicio</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" href="projectlist.jsp">Subir Proyectos</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="myproject.jsp">Mis proyectos</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="profiles.jsp">Perfil</a>
	        </li>
          	<li class="nav-item">
	          <a class="nav-link" href="logout.jsp">Salir</a>
	        </li>
	      </ul>
    	</div>
 	  </div>
	</nav>
	
	
	<div class="container-fluid h-auto mb-3">
	    <div class="row d-flex justify-content-center">
	    	<h1 class="h1 text-center mt-1 mb-3 til-color">Subir Proyecto</h1>
	      	<div class="col-md-6 align-items-center justify-content-center">
	      	
	      		<form class="justify-content-center" id="formuser">
		          
		          <div class="mb-2 mt-3">
		            <label for="Inputproname" class="form-label">Ingresa nombre del proyecto*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-justify-left"></i></div>
		              <input type="text" class="form-control" id="proname" name="proname" placeholder="Nombre*" required="required">
		            </div>
		          </div>
		          	
		          <div class="mb-2 mt-3">
		            <label for="Inputprodes" class="form-label">Ingresa descripcion*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-file-earmark-font"></i></div>
		              <input type="text" class="form-control" id="prodes" name="prodes" placeholder="Descripcion*" required="required">
		            </div>
		          </div>
		 
		          <div class="mb-2 mt-3">
		            <label for="Inputprocate" class="form-label">Selecciona categoria*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-check2-circle"></i></div>
		              	<input type="text" class="form-control" id="procate" name="procate" placeholder="Categoria*" required="required">
		            </div>
		          </div>

		          <div class="mb-2 mt-3">
		            <label for="Inputproval" class="form-label">Ingresa valor $*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-coin"></i></div>
		              <input type="text" class="form-control" id="proval" name="proval" placeholder="Costo*" required="required">
		            </div>
		          </div>
		          
		          <div class="mb-2 mt-3">
		            <label for="Inputprotiem" class="form-label">Tiempo*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-calendar-event"></i></div>
		              <input type="number" class="form-control" id="protiem" name="protiem" placeholder="Meses*" required="required">
		            </div>
		          </div>
		          
		          <div class="mb-2 mt-3">
		            <label for="Inputprocol" class="form-label">Nombre del director del Proyecto*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-people-fill"></i></div>
		              <input type="text" class="form-control" id="procol" name="procol" placeholder="Nombre*" required="required">
		            </div>
		          </div>
		
		          <div class="text-center">
		            <button type="button" class="btn btn-success fs-6 px-3" onclick="enviar()"><i class="bi bi-file-arrow-up fs-6 px-2"></i>Subir</button>
		          </div>
		        </form>
		       	<div id="error" class="col--md-6 alert mt-3 alert-danger visually-hidden text-center"role="alert">Error al subir tu proyecto, intentalo de nuevo gracias!</div>  
	    		<div id="correcto" class="col--md-6 alert mt-3 alert-success visually-hidden text-center" role="alert">Proyecto subido exitosamente.</div>
	        </div>
	     </div>    
	</div>        	

  <footer class="footer-color justify-content-center align-items-center pt-3 pb-2">
    <p class="text-center display-7 fw-bold text-white tex-footer">HelpToFuture © Copyright <script type="text/javascript"> copyright=new Date(); update=copyright.getFullYear(); document.write(update); </script><br>Designed by Jenny & Daniela Zambrano</p>
  </footer>

<script src="assets/jquery/jquery-3.6.0.min.js"></script>
<script src="assets/jsc/insertP.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/popper/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
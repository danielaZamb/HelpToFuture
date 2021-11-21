<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width">
<link rel="shortcut icon" href="assets/images/iconlogo.png" type="image/x-icon">
<title>Inicio</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
<link href="assets/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body class="vh-100">

	<nav class="navbar navbar-expand-lg navbar-nav-scroll navbar-light">
  	<div class="container-fluid">
    	<a class="navbar-brand" href="iniciu.jsp">
    	<img src="assets/images/iconlogo.png" alt="imagenlogo" width="90" height="73" class="d-inline-block align-text-top fx-1"></a>
     
    	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      		<span class="navbar-toggler-icon"></span>
    	</button>
  			<div class="collapse navbar-collapse" id="navbarNavDropdown">
	      <ul class="navbar-nav nav-tabs">
          <li class="nav-item">
	          <a class="title-color text-decoration-none fs-3 px-2 disabled" aria-current="page" href="index.html">HelpToFuture</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="iniciu.jsp">Inicio</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="projectlists.jsp">Proyectos</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="register.jsp">Registra Usuario</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="entrepenaur.jsp">Emprendedores</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="invest.jsp">Inversores</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="profile.jsp">Perfil</a>
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
	    <h1 class="h1 text-center mt-1 mb-2 til-color">Bienvenid@</h1>
	    	<h1 class="h1 text-center mt-1 mb-2 til-color">Elije una opcion</h1>
	      	<div class="col-md-6 align-items-center justify-content-center">
	        	<div class="row">
	        		<div class="col-sm-6">
		        		<div class="card w-100">
						  <img class="card-img-top" src="assets/images/img09.jpg" alt="imageprojects">
						  <!--Foto de John Diez en Pexels-->
						  <div class="card-body text-center">
						    <h5 class="card-title">Proyectos</h5>
						    <a href="projectlists.jsp" class="btn btn-success"><i class="bi bi-joystick px-2"></i>Ver</a>
						  </div>
						</div> 
					</div>
					<div class="col-sm-6">
						<div class="card w-100">
						  <img class="card-img-top" src="assets/images/img10.jpg" alt="imagesupport">
						  <!--Foto de cottonbro en Pexels-->
						  <div class="card-body text-center">
						    <h5 class="card-title">Registra Usuario</h5>
						    <a href="register.jsp" class="btn btn-success"><i class="bi bi-keyboard px-2"></i>Ir</a>
						  </div>
						</div>
					</div>
				</div>	
				<div class="row">
					<div class="col-sm-6">
		        		<div class="card w-100">
						  <img class="card-img-top" src="assets/images/img11.jpg" alt="imageprojects">
						  <!--Foto de cottonbro en Pexels-->
						  <div class="card-body text-center">
						    <h5 class="card-title">Emprendedores</h5>
						    <a href="entrepenaur.jsp" class="btn btn-success"><i class="bi bi-lightbulb px-2"></i>Ver</a>
						  </div>
						</div> 
					</div>
					<div class="col-sm-6">
						<div class="card w-100">
						  <img class="card-img-top" src="assets/images/img12.jpg" alt="imagesupport">
						  <!--Foto de Tiger Lily en Pexels-->
						  <div class="card-body text-center">
						    <h5 class="card-title">Inversores</h5>
						    <a href="invest.jsp" class="btn btn-success"><i class="bi bi-magic px-2"></i>Ver</a>
						  </div>
						</div>
					</div>		
	        	</div>
	        </div>
	     </div>
	</div>        	

  <footer class="footer-color justify-content-center align-items-center pt-3 pb-2">
    <p class="text-center display-7 fw-bold text-white tex-footer">HelpToFuture © Copyright <script type="text/javascript"> copyright=new Date(); update=copyright.getFullYear(); document.write(update); </script><br>Designed by Jenny & Daniela Zambrano</p>
  </footer>

<script src="assets/jquery/jquery-3.6.0.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/popper/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
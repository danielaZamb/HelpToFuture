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
</head>
<body class="vh-auto">

	<nav class="navbar navbar-expand-lg navbar-nav-scroll navbar-light">
  	<div class="container-fluid">
    	<a class="navbar-brand" href="index.html">
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
	          <a class="nav-link" aria-current="page" href="index.html">Inicio</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="aboutus.jsp">Nosotros</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" href="projects.jsp">Proyectos</a>
	        </li>
          <li class="nav-item">
	          <a class="nav-link" href="login.jsp">Ingresar</a>
	        </li>
          <li class="nav-item">
	          <a class="nav-link" href="signup.jsp">Registrarse</a>
	        </li>
	      </ul>
    	</div>
 	  </div>
	</nav>

	<div class="container-fluid vh-100">
	    <div class="row d-flex justify-content-center">
	      	<div class="col-md-6 align-items-center justify-content-center">
	        	<div class="align-items-center mt-5 mb-5">
	        	<h1 class="h1 text-center mt-4 mb-2 til-color">Proyectos</h1>
		        	<div class="card-body text-center fs-5">
		        		<i class="bi bi-cash-coin" style="font-size: 6rem; color: #5CAB02;"></i>
		        		<br>
		              	<i>Puedes compartir proyectos innovadores, elaborar e invertir en ideas 
		              		comerciales ecológicas. Además, se promueven proyectos e iniciativas para 
		              		garantizar oportunidades de inversión respetuosas con el medio ambiente, además de fomentar la vida, 
		              		el emprendimiento y oportunidades de trabajo.</i>
		            </div>
				</div>			  
	      </div>
	      <div class="col-md-6 align-items-center justify-content-center text-center mt-5">
	      	<img class="mt-5 img-fluid"
	          	src="assets/images/img04.jpg" alt="projectimg" width="80%" height="80%"/>
	          <!--Foto de Marko Klaric en Pexels-->
	      </div>
      </div>
      <div class="card-body text-center fs-5 mt-5">
       	<i>Apoya proyectos desde los primeros inicios o sube tu proyecto para recibir inversiones.
       	 <a href="login.jsp" class="link-success fs-4 text-decoration-none">Comienza aqui</a><br>Hay ideas e innovaciones que cambian y ayudan al mundo. ¡Comparte la tuya!</i>
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
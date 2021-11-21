<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width">
<link rel="shortcut icon" href="assets/images/iconlogo.png" type="image/x-icon">
<title>Nosotros</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
<link href="assets/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body class="h-auto bg-about">

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
	          <a class="nav-link active" href="aboutus.jsp">Nosotros</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="projects.jsp">Proyectos</a>
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
        <h1 class="h1 text-center mt-2 mb-2 til-color">Nosotros</h1>
        	<div class="card border-dark align-items-center mt-5 mb-5">
	        	<div class="card-body text-center fs-5">
	              <i>Somos una plataforma digital que facilita la recaudación de fondos para ideas
	              de negocios, causas sin fines de lucro o proyectos ecologicos.</i>
	            </div>
			</div>			  
      </div>	
    </div>
	<div class="col-sm-6 align-items-center justify-content-center">
     	<div class="card border-dark align-items-center mt-3">
       		<div class="card-body text-center fs-5">
             	<i>Somos un crowdfunding en línea, te ofrecemos una herramienta fácil de usar que brinda una experiencia fluida tanto 
             	para los recaudadores de fondos como para quienes los apoyan.</i>
           	</div>
		</div>
    </div>   
  </div> 

  <footer class="footer-color justify-content-center align-items-center mt-4 pt-3 pb-2">
    <p class="text-center display-7 fw-bold text-white tex-footer">HelpToFuture © Copyright <script type="text/javascript"> copyright=new Date(); update=copyright.getFullYear(); document.write(update); </script><br>Designed by Jenny & Daniela Zambrano</p>
  </footer>

<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/popper/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
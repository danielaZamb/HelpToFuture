<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width">
<link rel="shortcut icon" href="assets/images/iconlogo.png" type="image/x-icon">
<title>Registrar</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
<link href="assets/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body class="h-auto minh-100">

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
	          <a class="nav-link" aria-current="page" href="iniciu.jsp">Inicio</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="projectlists.jsp">Proyectos</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" href="register.jsp">Registra Usuario</a>
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


  <div class="container-fluid h-auto">
    <div class="row d-flex justify-content-center mb-3">
      <div class="col-md-6 align-items-center justify-content-center">
        <h1 class="h1 text-center mt-3 mb-3 til-color">Registrar Usuario</h1>
        <div class="text-center">
        	<img class="mt-0 mb-3 img-fluid"
	        	src="assets/images/img13.jpg" alt="laptopima" width="75%" height="75%"/>
	          	<!--https://www.pexels.com/es-es/foto/silver-imac-en-el-escritorio-265129/-->
        	<p class="mt-3">
			  <button class="btn btn-success mx-4 px-4" type="button" data-bs-toggle="collapse" data-bs-target="#collapseUser" aria-expanded="false" aria-controls="collapseUser">
			    <i class="bi bi-person-circle px-1"></i>Usuario
			  </button>
			</p>
		</div>
		
		<div id="myGroup">
						
			<div class="collapse" id="collapseUser" data-parent="#myGroup">
			  <div class="card-body">
			    <form class="justify-content-center" id="formuser">
		          <div class="mb-2 mt-3">
		            <label for="Inputuserid" class="form-label">Ingresa No. de identificacion*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-credit-card"></i></div>
		              <input type="number" class="form-control" id="iduser" name="iduser" placeholder="No. Identificacion*" required="required">
		            </div>
		          </div>
		          
		          <div class="mb-2 mt-3">
		            <label for="Inputusername" class="form-label">Ingresa Nombre Completo*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-justify-left"></i></div>
		              <input type="text" class="form-control" id="username" name="username" placeholder="Nombre Completo*" required="required">
		            </div>
		          </div>
		          	
		          <div class="mb-2 mt-3">
		            <label for="Inputuseremail" class="form-label">Ingresa Email*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-at"></i></div>
		              <input type="email" class="form-control" id="useremail" name="useremail" placeholder="Email*" required="required">
		            </div>
		          </div>
		 
		          <div class="mb-2 mt-3">
		            <label for="Inputusertel" class="form-label">Ingresa Celular*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-telephone-plus-fill"></i></div>
		              <input type="tel" class="form-control" id="usertel" name="usertel" placeholder="Celular*" required="required">
		            </div>
		          </div>

		          <div class="mb-2 mt-3">
		            <label for="Inputuser" class="form-label">Ingresa Usuario*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-person-fill"></i></div>
		              <input type="text" class="form-control" id="user" name="user" placeholder="Usuario*" required="required">
		            </div>
		          </div>
		
		          <div class="mb-2">
		            <label for="Inputuserpass" class="form-label">Ingresa Contraseña*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-key"></i></div>
		              <input type="password" class="form-control" id="userpass" name="userpass" placeholder="Contraseña*" required="required">
		              <div class="input-group-append bg-light">
		                <button id="mostrarpassword" class="btn border border-light" type="button" onclick="mostrarPassword()"><span class="bi bi-eye-slash-fill icons"></span></button>
		              </div>
		            </div>
		          </div>
		
		          <div class="text-center">
		            <button type="button" class="btn btn-success" onclick="llevar()"><i class="bi bi-person-circle px-2"></i>Registrar</button>
		          </div>
		        </form>
			  </div>
			</div>
		</div>
		<div id="error" class="alert alert-danger visually-hidden text-center"role="alert">Error al registrar el usuario, intentalo de nuevo gracias!</div>  
      		<div id="correcto" class="alert alert-success visually-hidden text-center" role="alert">Registrado exitosamente, el usuario ya puede iniciar sesion. Gracias.</div>	  
      </div>
    </div>     
  </div> 

  <footer class="footer-color justify-content-center align-items-center mt-4 pt-3 pb-2">
    <p class="text-center display-7 fw-bold text-white tex-footer">HelpToFuture © Copyright <script type="text/javascript"> copyright=new Date(); update=copyright.getFullYear(); document.write(update); </script><br>Designed by Jenny & Daniela Zambrano</p>
  </footer>

<script src="assets/jquery/jquery-3.6.0.min.js"></script>
<script src="assets/jsc/log.js" type="text/javascript"></script>
<script src="assets/jsc/insertU.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/popper/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
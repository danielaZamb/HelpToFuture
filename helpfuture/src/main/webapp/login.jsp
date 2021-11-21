<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width">
<link rel="shortcut icon" href="assets/images/iconlogo.png" type="image/x-icon">
<title>Inicia Sesion</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
<link href="assets/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body class="vh-100">

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
	          <a class="nav-link" href="projects.jsp">Proyectos</a>
	        </li>
          <li class="nav-item">
	          <a class="nav-link active" href="login.jsp">Ingresar</a>
	        </li>
          <li class="nav-item">
	          <a class="nav-link" href="signup.jsp">Registrarse</a>
	        </li>
	      </ul>
    	</div>
 	  </div>
	</nav>


  <div class="container-fluid h-auto">
    <div class="row d-flex justify-content-center">
      <div class="col-md-6 align-items-center justify-content-center">
        <h1 class="h1 text-center mt-3 mb-2 til-color">Inicia Sesion</h1>
        <div class="text-center">
        	<p>
			  <button class="btn btn-success mx-4 px-2" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEmpren" aria-expanded="false" aria-controls="collapseEmpren">
			    <i class="bi bi-person-bounding-box px-1"></i>Emprendedor
			  </button>
			  <button class="btn btn-dark mx-4 px-4" type="button" data-bs-toggle="collapse" data-bs-target="#collapseInver" aria-expanded="false" aria-controls="collapseInver">
			    <i class="bi bi-person-badge-fill px-1"></i>Inversor
			  </button>
			  <button class="btn btn-info mx-4 px-4" type="button" data-bs-toggle="collapse" data-bs-target="#collapseUser" aria-expanded="false" aria-controls="collapseUser">
			    <i class="bi bi-person-circle px-1"></i>Usuario
			  </button>
			</p>
			<img class="mt-0 img-fluid"
	          	src="assets/images/img01.jpg" alt="laptopimg" width="70%" height="70%"/>
	          <!--pexels.com/es-es/foto/mano-de-la-persona-en-la-computadora-portatil-461064/-->
		</div>
		
		<div id="myGroup">
			<div class="collapse" id="collapseEmpren" data-parent="#myGroup">
			  <div class="card-body">
			    <form class="justify-content-center" id="formemp">
		          <div class="mb-2 mt-3">
		            <label for="Inputempname" class="form-label">Ingrese Usuario*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-person-check-fill"></i></div>
		              <input type="text" class="form-control" id="empname" name="empname" placeholder="Usuario*" required="required">
		            </div>
		          </div>
		
		          <div class="mb-2">
		            <label for="Inputemppass" class="form-label">Ingrese Contraseña*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-key"></i></div>
		              <input type="password" class="form-control" id="emppass" name="emppass" placeholder="Contraseña*" required="required">
		              <div class="input-group-append bg-light">
		                <button id="mostrarpasswords" class="btn border border-light" type="button" onclick="mostrarPasswords()"><span class="bi bi-eye-slash-fill icons"></span></button>
		              </div>
		            </div>
		          </div>
		
		          <div class="text-center">
		            <button type="button" class="btn btn-success" onclick="aceptar()"><i class="bi bi-person-bounding-box px-2"></i>Ingresar</button>
		          </div>
		        </form>
			  </div>
			</div>
			
			<div class="collapse" id="collapseInver" data-parent="#myGroup">
			  <div class="card-body">
			    <form class="justify-content-center" id="forminver">
		          <div class="mb-2 mt-3">
		            <label for="Inputinvname" class="form-label">Ingrese Usuario*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-person-check-fill"></i></div>
		              <input type="text" class="form-control" id="invname" name="invname" placeholder="Usuario*" required="required">
		            </div>
		          </div>
		
		
				  <div class="mb-2">
		            <label for="Inputinpass" class="form-label">Ingrese Contraseña*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-key"></i></div>
		              <input type="password" class="form-control" id="inpass" name="inpass" placeholder="Contraseña*" required="required">
		              <div class="input-group-append bg-light">
		                <button id="mostrarpasswor" class="btn border border-light" type="button" onclick="mostrarPasswor()"><span class="bi bi-eye-slash-fill icons"></span></button>
		              </div>
		            </div>
		          </div>
		
		          <div class="text-center">
		            <button type="button" class="btn btn-dark" onclick="comprobar()"><i class="bi bi-person-badge-fill px-2"></i>Ingresar</button>
		          </div>
		        </form>
			  </div>
			</div>
			
			<div class="collapse" id="collapseUser" data-parent="#myGroup">
			  <div class="card-body">
			    <form class="justify-content-center" id="formuser">
		          <div class="mb-2 mt-3">
		            <label for="Inputusername" class="form-label">Ingrese Usuario*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-person-check-fill"></i></div>
		              <input type="text" class="form-control" id="username" name="username" placeholder="Usuario*" required="required">
		            </div>
		          </div>
		
				  <div class="mb-2">
		            <label for="Inputuserpass" class="form-label">Ingrese Contraseña*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-key"></i></div>
		              <input type="password" class="form-control" id="userpass" name="userpass" placeholder="Contraseña*" required="required">
		              <div class="input-group-append bg-light">
		                <button id="mostrarpassword" class="btn border border-light" type="button" onclick="mostrarPassword()"><span class="bi bi-eye-slash-fill icons"></span></button>
		              </div>
		            </div>
		          </div>
		
		          <div class="text-center">
		            <button type="button" class="btn btn-info" onclick="verificar()"><i class="bi bi-person-circle px-2"></i>Ingresar</button>
		          </div>
		        </form>
			  </div>
			</div>
		</div>
		<div class="text-center">
			<p>¿No te has registrado? <a href="signup.jsp" class="link-success fs-5 text-decoration-none">aqui puedes hacerlo</a></p>
		</div>
		<div id="error" class="alert alert-danger visually-hidden text-center"role="alert">Usuario o contraseña incorrecta!</div>	  
      </div>
    </div>     
  </div> 

  <footer class="footer-color justify-content-center align-items-center mt-5 pt-3 pb-2">
    <p class="text-center display-7 fw-bold text-white tex-footer">HelpToFuture © Copyright <script type="text/javascript"> copyright=new Date(); update=copyright.getFullYear(); document.write(update); </script><br>Designed by Jenny & Daniela Zambrano</p>
  </footer>

<script src="assets/jquery/jquery-3.6.0.min.js"></script>
<script src="assets/jsc/log.js" type="text/javascript"></script>
<script src="assets/jsc/veri.js" type="text/javascript"></script>
<script src="assets/jsc/veriEmp.js" type="text/javascript"></script>
<script src="assets/jsc/veriInver.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/popper/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
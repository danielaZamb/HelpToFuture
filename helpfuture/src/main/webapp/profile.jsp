<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width">
<link rel="shortcut icon" href="assets/images/iconlogo.png" type="image/x-icon">
<title>Perfil</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
<link href="assets/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body class="minh-100 bg-profile">

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
	          <a class="nav-link" href="register.jsp">Registra Usuario</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="entrepenaur.jsp">Emprendedores</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="invest.jsp">Inversores</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" href="profile.jsp">Perfil</a>
	        </li>
          	<li class="nav-item">
	          <a class="nav-link" href="logout.jsp">Salir</a>
	        </li>
	      </ul>
    	</div>
 	  </div>
	</nav>


  <div class="container-fluid h-auto">
    <div class="row d-flex justify-content-left mb-3">
      <div class="col-md-6 align-items-center justify-content-center mx-4">
        <h1 class="h1 text-center mt-5 mb-5 til-color">Actualiza tu Perfil</h1>
        <div class="text-left">	
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
	            <label for="Inputuserpass" class="form-label">Ingresa Contrase�a*</label>
	            <div class="input-group">
	              <div class="input-group-text"><i class="bi bi-key"></i></div>
	              <input type="password" class="form-control" id="userpass" name="userpass" placeholder="Contrase�a*" required="required">
	              <div class="input-group-append bg-light">
	                <button id="mostrarpassword" class="btn border border-light" type="button" onclick="mostrarPassword()"><span class="bi bi-eye-slash-fill icons"></span></button>
	              </div>
	            </div>
	          </div>
	
	          <div class="text-center">
	            <button type="button" class="btn btn-info" onclick="actualizacion()"><i class="bi bi-person-circle px-2"></i>Actualizar</button>
	          </div>
	        </form>
		  </div>
		  <div id="error" class="col--md-6 alert mt-3 alert-danger visually-hidden text-center"role="alert">Error al actualizar tus datos, intentalo de nuevo gracias!</div>  
	    <div id="correcto" class="col--md-6 alert mt-3 alert-success visually-hidden text-center" role="alert">Datos actualizados exitosamente.</div>
		</div>	
	</div>	  
</div>

  <footer class="footer-color justify-content-center align-items-center mt-5 pt-3 pb-2">
    <p class="text-center display-7 fw-bold text-white tex-footer">HelpToFuture � Copyright <script type="text/javascript"> copyright=new Date(); update=copyright.getFullYear(); document.write(update); </script><br>Designed by Jenny & Daniela Zambrano</p>
  </footer>

<script src="assets/jquery/jquery-3.6.0.min.js"></script>
<script src="assets/jsc/log.js" type="text/javascript"></script>
<script src="assets/jsc/actuU.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/popper/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
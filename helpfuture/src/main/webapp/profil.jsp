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
<body class="minh-100 bg-profil">

  	<nav class="navbar navbar-expand-lg navbar-nav-scroll navbar-light">
  	<div class="container-fluid">
    	<a class="navbar-brand" href="inicioo.jsp">
    	<img src="assets/images/iconlogo.png" alt="imagenlogo" width="90" height="73" class="d-inline-block align-text-top fx-1"></a>
     
    	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      		<span class="navbar-toggler-icon"></span>
    	</button>
  			<div class="collapse navbar-collapse" id="navbarNavDropdown">
	      <ul class="navbar-nav nav-tabs">
          <li class="nav-item">
	          <a class="title-color text-decoration-none fs-3 px-2 disabled" aria-current="page" href="inicioo.jsp">HelpToFuture</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" aria-current="page" href="inicioo.jsp">Inicio</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="projectlistt.jsp">Ver Proyectos</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link" href="projectsupport.jsp">Proyectos que Apoyo</a>
	        </li>
	        <li class="nav-item">
	          <a class="nav-link active" href="profil.jsp">Perfil</a>
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
		            <label for="Inputinvid" class="form-label">Ingresa No. de identificacion*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-credit-card"></i></div>
		              <input type="number" class="form-control" id="idinv" name="idinv" placeholder="No. Identificacion NIT o CC*" required="required">
		            </div>
		          </div>
		          
		          <div class="mb-2 mt-3">
		            <label for="Inputempname" class="form-label">Ingresa Nombre Completo*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-justify-left"></i></div>
		              <input type="text" class="form-control" id="invname" name="invname" placeholder="Nombre Completo*" required="required">
		            </div>
		          </div>
		          	
		          <div class="mb-2 mt-3">
		            <label for="Inputempemail" class="form-label">Ingresa Email*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-at"></i></div>
		              <input type="email" class="form-control" id="invemail" name="invemail" placeholder="Email*" required="required">
		            </div>
		          </div>
		          
		          <div class="mb-2 mt-3">
		            <label for="Inputempdir" class="form-label">Ingresa Direccion*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-geo-alt-fill"></i></div>
		              <input type="text" class="form-control" id="invdir" name="invdir" placeholder="Direccion*" required="required">
		            </div>
		          </div>
		          
		          <div class="mb-2 mt-3">
		            <label for="Inputempcel" class="form-label">Ingresa Celular*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-telephone-plus-fill"></i></div>
		              <input type="tel" class="form-control" id="invcel" name="invtel" placeholder="Celular*" required="required">
		            </div>
		          </div>
		          
		          <div class="mb-2 mt-3">
		            <label for="Inputemptel" class="form-label">Ingresa Telefono*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-telephone-plus-fill"></i></div>
		              <input type="tel" class="form-control" id="invtel" name="invtel" placeholder="Telefono*" required="required">
		            </div>
		          </div>	
		          	
		          <div class="mb-2 mt-3">
		            <label for="Inputinvuser" class="form-label">Ingresa Usuario*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-person-fill"></i></div>
		              <input type="text" class="form-control" id="invuser" name="invuser" placeholder="Usuario*" required="required">
		            </div>
		          </div>
		
		          <div class="mb-2">
		            <label for="Inputinvpass" class="form-label">Ingresa Contraseña*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-key"></i></div>
		              <input type="password" class="form-control" id="inpass" name="inpass" placeholder="Contraseña*" required="required">
		              <div class="input-group-append bg-light">
		                <button id="mostrarpasswor" class="btn border border-light" type="button" onclick="mostrarPasswor()"><span class="bi bi-eye-slash-fill icons"></span></button>
		              </div>
		            </div>
		          </div>
	
	          <div class="text-center">
	            <button type="button" class="btn btn-info" onclick="actualizar()"><i class="bi bi-person-circle px-2"></i>Actualizar</button>
	          </div>
	        </form>
		  </div>
		  <div id="error" class="col--md-6 alert mt-3 alert-danger visually-hidden text-center"role="alert">Error al actualizar tus datos, intentalo de nuevo gracias!</div>  
	    <div id="correcto" class="col--md-6 alert mt-3 alert-success visually-hidden text-center" role="alert">Datos actualizados exitosamente.</div>
		</div>	
	</div>	  
</div>

  <footer class="footer-color justify-content-center align-items-center mt-5 pt-3 pb-2">
    <p class="text-center display-7 fw-bold text-white tex-footer">HelpToFuture © Copyright <script type="text/javascript"> copyright=new Date(); update=copyright.getFullYear(); document.write(update); </script><br>Designed by Jenny & Daniela Zambrano</p>
  </footer>

<script src="assets/jquery/jquery-3.6.0.min.js"></script>
<script src="assets/jsc/log.js" type="text/javascript"></script>
<script src="assets/jsc/actuI.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/popper/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
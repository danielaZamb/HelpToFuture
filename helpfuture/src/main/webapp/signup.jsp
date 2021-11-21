<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width">
<link rel="shortcut icon" href="assets/images/iconlogo.png" type="image/x-icon">
<title>Registrate</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
<link href="assets/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
</head>
<body class="h-auto minh-100">

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
	          <a class="nav-link" href="login.jsp">Ingresar</a>
	        </li>
          <li class="nav-item">
	          <a class="nav-link active" href="signup.jsp">Registrarse</a>
	        </li>
	      </ul>
    	</div>
 	  </div>
	</nav>


  <div class="container-fluid h-auto">
    <div class="row d-flex justify-content-center mb-5">
      <div class="col-md-6 align-items-center justify-content-center">
        <h1 class="h1 text-center mt-2 mb-4 til-color">Registrate</h1>
        <div class="text-center">
        	<img class="mt-0 img-fluid"
	        	src="assets/images/img03.jpg" alt="laptopima" width="75%" height="75%"/>
	          	<!--Foto de George Milton en Pexels/-->
        	<p class="mt-3">
			  <button class="btn btn-success mx-4 px-2" type="button" data-bs-toggle="collapse" data-bs-target="#collapseEmpren" aria-expanded="false" aria-controls="collapseEmpren">
			    <i class="bi bi-person-bounding-box px-1"></i>Emprendedor
			  </button>
			  <button class="btn btn-dark mx-4 px-4" type="button" data-bs-toggle="collapse" data-bs-target="#collapseInver" aria-expanded="false" aria-controls="collapseInver">
			    <i class="bi bi-person-badge-fill px-1"></i>Inversor
			  </button>
			</p>
		</div>
		
		<div id="myGroup">
			<div class="collapse" id="collapseEmpren" data-parent="#myGroup">
			  <div class="card-body">
			    <form class="justify-content-center" id="formemp">
			    	
			      <div class="mb-2 mt-3">
		            <label for="Inputempid" class="form-label">Ingresa No. de identificacion*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-credit-card"></i></div>
		              <input type="number" class="form-control" id="idemp" name="idemp" placeholder="No. Identificacion*" required="required">
		            </div>
		          </div>
		          
		          <div class="mb-2 mt-3">
		            <label for="Inputempname" class="form-label">Ingresa Nombre Completo*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-justify-left"></i></div>
		              <input type="text" class="form-control" id="empname" name="empname" placeholder="Nombre Completo*" required="required">
		            </div>
		          </div>
		          	
		          <div class="mb-2 mt-3">
		            <label for="Inputempemail" class="form-label">Ingresa Email*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-at"></i></div>
		              <input type="email" class="form-control" id="empemail" name="empemail" placeholder="Email*" required="required">
		            </div>
		          </div>
		          
		          <div class="mb-2 mt-3">
		            <label for="Inputempdir" class="form-label">Ingresa Direccion*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-geo-alt-fill"></i></div>
		              <input type="text" class="form-control" id="empdir" name="empdir" placeholder="Direccion*" required="required">
		            </div>
		          </div>
		          
		          <div class="mb-2 mt-3">
		            <label for="Inputemptel" class="form-label">Ingresa Celular*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-telephone-plus-fill"></i></div>
		              <input type="tel" class="form-control" id="emptel" name="emptel" placeholder="Celular*" required="required">
		            </div>
		          </div>	
		          	
		          <div class="mb-2 mt-3">
		            <label for="Inputempuser" class="form-label">Ingresa Usuario*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-person-fill"></i></div>
		              <input type="text" class="form-control" id="empuser" name="empuser" placeholder="Usuario*" required="required">
		            </div>
		          </div>
		
		          <div class="mb-2">
		            <label for="Inputemppass" class="form-label">Ingresa Contraseña*</label>
		            <div class="input-group">
		              <div class="input-group-text"><i class="bi bi-key"></i></div>
		              <input type="password" class="form-control" id="emppass" name="emppass" placeholder="Contraseña*" required="required">
		              <div class="input-group-append bg-light">
		                <button id="mostrarpasswords" class="btn border border-light" type="button" onclick="mostrarPasswords()"><span class="bi bi-eye-slash-fill icons"></span></button>
		              </div>
		            </div>
		          </div>
		
		          <div class="text-center">
		            <button type="button" class="btn btn-success" onclick="llevar()"><i class="bi bi-person-bounding-box px-2"></i>Ingresar</button>
		          </div>
		        </form>
			  </div>
			</div>
			
			<div class="collapse" id="collapseInver" data-parent="#myGroup">
			  <div class="card-body">
			    <form class="justify-content-center" id="forminver">
		          
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
		            <button type="button" class="btn btn-dark" onclick="enviar()"><i class="bi bi-person-badge-fill px-2"></i>Registrar</button>
		          </div>
		        </form>
			  </div>
			</div>
			
		</div>
			<div id="error" class="alert alert-danger visually-hidden text-center"role="alert">Error al registrarte, intentalo de nuevo gracias!</div>  
      		<div id="correcto" class="alert alert-success visually-hidden text-center" role="alert">Registrado exitosamente, ahora inicia sesion. Gracias.</div>
      </div>
    </div>     
  </div> 

  <footer class="footer-color justify-content-center align-items-center mt-4 pt-3 pb-2">
    <p class="text-center display-7 fw-bold text-white tex-footer">HelpToFuture © Copyright <script type="text/javascript"> copyright=new Date(); update=copyright.getFullYear(); document.write(update); </script><br>Designed by Jenny & Daniela Zambrano</p>
  </footer>

<script src="assets/jquery/jquery-3.6.0.min.js"></script>
<script src="assets/jsc/log.js" type="text/javascript"></script>
<script src="assets/jsc/insert.js" type="text/javascript"></script>
<script src="assets/jsc/insertE.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/popper/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
</body>
</html>
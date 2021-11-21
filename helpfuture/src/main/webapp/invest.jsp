<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width">
<link rel="shortcut icon" href="assets/images/iconlogo.png" type="image/x-icon">
<title>Inversores</title>
<link href="assets/css/bootstrap.min.css" rel="stylesheet"/>
<link href="assets/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
<link rel="stylesheet" href="assets/datatables/dataTables.jqueryui.css" />
<link rel="stylesheet" href="assets/datatables/responsive.dataTables.min.css" />
<link rel="stylesheet" href="assets/datatables/responsive.jqueryui.min.css" />
</head>
<body class="vh-100 bg-inv">

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
	          <a class="nav-link active" href="invest.jsp">Inversores</a>
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
	
	<div class="container-fluid vh-100 mb-3">
	    <div class="row d-flex text-left mx-4">	
	      	<div class="col-md-6">
	      		<h1 class="h1 text-center mt-5 mb-5 til-color">Listado de Inversores</h1>
	        	<div class="table-responsive">
					<table class="table text-left table-hover table-borderless dt-responsive" cellspacing="0" id="tabl">
						<thead style="background-color: #5CAB02;" class="text-white text-center">
							<tr>
								<th>Nombre</th>
								<th>Email</th>
								<th>Direccion</th>
								<th>Celular</th>
								<th>Telefono</th>
							</tr>
						</thead>
						<tbody class="text-center">					  
							  <tr>
							    <td>f</td>
							    <td>f</td>
							    <td>f</td>
							    <td>f</td>
							    <td>f</td>
							</tr>
						</tbody>						
					</table>
				</div>
	        </div>
	     </div>
	</div>
	
  <footer class="footer-color justify-content-center align-items-center pt-3 pb-2">
    <p class="text-center display-7 fw-bold text-white tex-footer">HelpToFuture � Copyright <script type="text/javascript"> copyright=new Date(); update=copyright.getFullYear(); document.write(update); </script><br>Designed by Jenny & Daniela Zambrano</p>
  </footer>

<script src="assets/jquery/jquery-3.6.0.min.js"></script>
<script src="assets/jsc/verifica.js" type="text/javascript"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/popper/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/datatables/jquery.dataTables.min.js"></script>
<script src="assets/datatables/dataTables.jqueryui.min.js"></script>
<script src="assets/datatables/dataTables.responsive.min.js"></script>
<script src="assets/datatables/responsive.jqueryui.min.js"></script>
</body>
<script type="text/javascript">
	$(document).ready(function() {
	    $('#iddatatable').DataTable( {
	        "scrollY":        "200px",
	        "scrollCollapse": true,
	        "paging":         true,
	    } );
	} );
</script>
</html>
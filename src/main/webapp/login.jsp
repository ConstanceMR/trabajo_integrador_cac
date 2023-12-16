<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="es">

	<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	
	  <link rel="stylesheet" href="./css/bootstrap.min.css">
      <link rel="stylesheet" href="./css/styles.css">
	  <link rel="shortcut icon" href="./img/codoacodo-min.png" type="image/x-icon">
	
	  <title>Trabajo Integrador</title>
	  <style>
		    body{
		        height:100vh;
		        display: grid;
		        grid-template-rows: 10% 75% 15%;
		        grid-template-areas: "header"
		                             "main"
		                             "footer";  
		
		    }
		    header{
		        grid-area: header;
		    }
		    main{
		        grid-area: main;
		        overflow: auto;
		    }
		    footer{
		        grid-area: footer;
		      
		    }
		  </style>
	</head>
	<body>
	
		<header>
		    <nav class="navbar navbar-dark bg-dark fixed-top navbar-expand-lg">
		        <div class="container">
		            <a class="navbar-brand" href="index.jsp">
		                <img src="assets/img/codoacodo-min.png" alt="Codo a Codo logo">
		                Conf Bs As
		            </a>
		            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
		                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
		                aria-label="Toggle navigation">
		                <span class="navbar-toggler-icon"></span>
		            </button>
		            <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
		                <ul class="navbar-nav mb-2 mb-lg-0">
		                    <li class="nav-item">
		                        <a class="nav-link active" aria-current="page" href="./index.jsp">La conferencia</a>
		                    </li>
		                    <li class="nav-item">
		                        <a class="nav-link" href="./index.jsp#oradores">Los oradores</a>
		                    </li>
		                    <li class="nav-item">
		                        <a class="nav-link" href="./index.jsp#lugar">El lugar y la fecha</a>
		                    </li>
		                    <li class="nav-item">
		                        <a class="nav-link" href="./index.jsp#form-orador">Conviértete en orador</a>
		                    </li>
		                    <li class="nav-item">
		                        <a class="nav-link btn-compra-tickets" href="tickets.jsp">Comprar tickets</a>
		                    </li>
		                     <li class="nav-item">
                        		<a class="nav-link" href="login.jsp">LogIn</a>
                    		</li>
		                </ul>
		            </div>
		        </div>
		    </nav>
		</header>
		
		<main class="d-flex justify-content-center align-items-center">
		 <section class="mt-5 container" id="form-orador">
		        <div class="row justify-content-center">
		            <div class="col-lg-8 col-xl-7">
		                <h2 class="titulo-gral mb-3">LogIn</h2>
		                
		                <form action="<%=request.getContextPath()%>/LoginAdminController" method="POST">
		                    <div class="row justify-content-center">
		                        <div class="col-8 mb-3 mb-4">
		                            <input type="text" class="form-control" name="nombre" placeholder="Usuario" aria-label="Nombre" required>
		                            
		                        </div>
		                         <div class="col-8 mb-3 mb-4">
		                           <input type="password" class="form-control" name="password" placeholder="Contraseña" aria-label="Password" required>
		                         </div>
		                    </div>
		                    <div class="row justify-content-center">
		                        <div class="col-8 mb-3">
		                            <div class="d-grid">
		                                <button type="submit" class="btn btn-lg btn-form">LogIn</button>
		                            </div>
		                        </div>
		                    </div>
		                </form>
		            </div>
		        </div>
		    </section>
		
		</main>
		
			<!-- aca va el header.jsp -->
		<jsp:include page="footer.jsp"/>
		
		
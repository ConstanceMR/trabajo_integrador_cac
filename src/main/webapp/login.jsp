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
		        padding-top: 10vh;
		       
		    }
		    footer{
		        grid-area: footer;
		      
		    }
		  </style>
	</head>

	
		<!-- aca va el header.jsp -->
		 <jsp:include page="header.jsp"/>
		
		<main class="d-flex justify-content-center align-items-center">
		 <section class="mt-1 container" id="form-orador">
		        <div class="row justify-content-center align-items-center">
		            <div class="col-lg-8 col-xl-7">
		                <h2 class="titulo-gral mb-5 text-center fs-1">LogIn</h2>
		                
		                <form action="<%=request.getContextPath()%>/LoginAdminController" method="post">
		                    <div class="row justify-content-center">
		                        <div class="col-8 mb-3 mb-4">
		                            <input type="text" class="form-control p-3" name="nombre" placeholder="Usuario" aria-label="Nombre" required>
		                            
		                        </div>
		                         <div class="col-8 mb-3 mb-4">
		                           <input type="password" class="form-control p-3" name="password" placeholder="Contraseña" aria-label="Password" required>
		                         </div>
		                    </div>
		                    <div class="row justify-content-center">
		                        <div class="col-8 mb-3">
		                            <div class="d-grid">
		                                <button type="submit" class="btn btn-lg btn-form greenBtn colorWhite">LogIn</button>
		                            </div>
		                            <div class=" mt-5">
		                            	<h3>usuario: grupo1</h3>
		                            	<h3>contraseña: 23552</h3>
		                            </div>
		                           
		                        </div>
		                    </div>
		                </form>
		            </div>
		        </div>
		    </section>
		
		</main>
		
			<!-- aca va el footer.jsp -->
		<jsp:include page="footer.jsp"/>
		
		
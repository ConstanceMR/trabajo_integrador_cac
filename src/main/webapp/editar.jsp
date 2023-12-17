<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>
<%
 Orador orador = (Orador)request.getAttribute("orador"); // levanto el departamento que viene del controller
%>

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
	<body>
				<!-- aca va el header.jsp -->
		 <jsp:include page="header.jsp"/>
		
		<main class="mb-5">
          <section class="container mt-5" id="form-orador">
		        <div class="row justify-content-center mt-5">
		            <div class="col-lg-8 col-xl-7">
		                <h2 class="titulo-gral text-center mt-5 mb-5 fs-1">Modificar datos del Orador</h2>
		               
		                <form action="<%=request.getContextPath()%>/UpdateOradorController" method="POST">
		                    <div class="row gx-2">
		                        <div class="col-md mb-3">
		                            <input type="hidden"  name="id" value="<%=orador.getId()%>">
		                            <input type="text" class="form-control p-3"
		                             name="nombre" 
		                             placeholder="Nombre" 
		                             aria-label="Nombre"
		                             id="validationCustom02"
		                             value="<%=orador.getNombre()%>" 
		                             required>
		                        </div>
		                        <div class="col-md mb-3">
		                            <input type="text" class="form-control p-3" name="apellido" placeholder="Apellido" aria-label="Apellido"
		                             value="<%=orador.getApellido()%>" 
		                             required>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col mb-3">
		                            <input type="email" class="form-control p-3" name="mail" placeholder="Email" aria-label="Email"
		                            value="<%=orador.getMail()%>"  
		                            required>
		                        </div>
		                    </div>
		                    <div class="row">
		                        <div class="col mb-3">
		                            <textarea class="form-control p-3" name="tema" id="exampleFormControlTextarea1" rows="4"
		                              
		                                placeholder="<%=orador.getTema()%>" 
		                                
		                                required><%=orador.getTema()%> </textarea>
		                            <div id="emailHelp" class="form-text mb-3">Recuerda incluir un título para tu charla.</div>
		                            <div class="d-grid">
		                                <button type="submit" class="btn btn-lg btn-form greenBtn colorWhite p-3">Modificar</button>
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
		
		
		 <script src="js/bootstrap.bundle.min.js"></script>
	
	</body>
</html>
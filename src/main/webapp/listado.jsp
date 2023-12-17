<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="es">

	<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	
	   <link rel="stylesheet" href="css/bootstrap.min.css">
       <link rel="stylesheet" href="css/styles.css">
	  <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
	
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
		        padding-top: 15vh;
		    }
		    footer{
		        grid-area: footer;
		      
		    }
		  </style>
	</head>
	<body>
	
				<!-- aca va el header.jsp -->
		 <jsp:include page="header.jsp"/>
		
		<main class="mt-20">
		
			<section class="mt-7">
		        <h3 class=" mt-4 fs-3 fw-bolder text-center">Encontra tus oradores favoritos por sus temas</h3>
		       
		        <form class="d-flex" action="<%=request.getContextPath()%>/BuscarOradorTemaController" method="post">
		       
		       
		       <div class=" w-100 d-flex flex-row justify-content-center">
		        <div class=" h-50 w-75  ">
		            <input class="form-control me-2 input-reducido w-100" name="temabuscar" id="temabuscar" type="search" placeholder="Escribi un tema" aria-label="Buscar">
		           </div>
		            <input class="btn btn-outline-success greenBtn colorWhite" type="submit" value="Buscar">
		         </div>
		        </form>
		      
	        </section>
			<section class="container mt-5 mb-4" id="restoOradores">
		        <h2 class="titulo-gral fs-3 text-center">Conoce todos los oradores que se presentan</h2>
		      
		        <div class="row">
		            <table class="table">
		                <thead>
		                  <tr>
		                    <th scope="col">#</th>
		                    <th scope="col">Nombre</th>
		                    <th scope="col">Apellido</th>
		                    <th scope="col">Tema</th>
		                  </tr>
		                </thead>
		                 <% 
						  	//codigo java
						  	//obtener el listado desde el request
						  	//se guardo bajo el nombre de "listado"
						  	List<Orador> listado = (List<Orador>)request.getAttribute("listado");
		                     
		                 // verifico si esta vacio o null listado, eso quiere decir que NO HAY ORADORES, 
		                 // si no hay oradores entonces mostrar un msj con un h3 que diga NO HAY ORADORES PARA EL TEMA BUSCADO
		                 //ELSE sino, que muestre el tbody y haga el for 
					 	 %>				 	
		                <tbody>
			                 <!-- ESTO SE REPITE TANTA CANDTIDAD DE VECES COMO ARTICULOS TENGA -->
						   <%
						   	for( Orador  unOrador : listado) {
						   %>
		                  <tr>
		                    <th scope="row"><%=unOrador.getId()%></th>
		                    <td><%=unOrador.getNombre() %></td>
		                    <td><%=unOrador.getApellido() %></td>
		                    <td><%=unOrador.getTema() %></td>
		                  </tr>
		                   <%
					   		}
					  	   %>
		                </tbody>
		              </table>
		        </div>

    	  </section>
	
		
		</main>
		
		<!-- aca va el footer.jsp -->
		<jsp:include page="footer.jsp"/>
		
	  
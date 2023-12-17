<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="es">

	<head>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	
	    <link rel="stylesheet" href="./css/bootstrap.min.css">
       <link rel="stylesheet" href="./css/styles.css">
	  <link rel="shortcut icon" href="./assets/img/codoacodo-min.png" type="image/x-icon">
	
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
		        margin-top:10vh;
				
		    footer{
		        grid-area: footer;
		      
		    }
		  </style>
	</head>
	<body>
	
				<!-- aca va el header.jsp -->
		 <jsp:include page="header.jsp"/>
		
		<main>
		<section class="mt-7">
		        <h3 class=" mt-4 fs-3 fw-bolder text-center">Encontra tus oradores favoritos por sus temas</h3>
		       
		        <form class="d-flex" action="<%=request.getContextPath()%>/BuscarOradorTemaController" method="post">
		       
		       
		       <div class=" w-100 d-flex flex-row justify-content-center">
		        <div class=" h-50 w-75 ">
		            <input class="form-control me-2 input-reducido w-100" name="temabuscar" id="temabuscar" type="search" placeholder="Escribi un tema" aria-label="Buscar">
		           </div>
		            <input class="btn btn-outline-success greenBtn colorWhite" type="submit" value="Buscar">
		         </div>
		        </form>
		      
	        </section>
			<section class="container mt-5 mb-4" id="restoOradores">
		        <h3 class="text-center fw-bolder fs-3 ">Conoce todos los oradores que se presentan</h2>
		      
		        <div class="row">
		            <table class="table"> 
		                <thead>
		                  <tr>
		                    <th scope="col">#</th>
		                    <th scope="col">Nombre</th>
		                    <th scope="col">Apellido</th>
		                    <th scope="col">Tema</th>
		                    <th scope="col">Acciones</th>
		                  </tr>
		                </thead>
		                 <% 
						  	//codigo java
						  	//obtener el listado desde el request
						  	//se guardo bajo el nombre de "listado"
						  	List<Orador> listado = (List<Orador>)request.getAttribute("listado");
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
		                    <td><a class="btn btn-info" role="button" href="<%=request.getContextPath()%>/UpdateOradorController?id=<%=unOrador.getId()%>">
							       Editar
							    </a> | 
					      		<!-- Button trigger modal -->
								<button type="button" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="setOradorId(<%=unOrador.getId()%>)">
								  Eliminar
								</button>
							  </td>
		                  </tr>
		                   <%
					   		}
					  	   %>
		                </tbody>
		              </table>
		        </div>

    	  </section>
	
		
		</main>
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog">
		    <div class="modal-content">
		    	<form action="<%=request.getContextPath()%>/DeleteOradorController">
		    	  <input type="hidden" name="idOrador" id="idOrador">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Dar de baja Orador</h5>
			        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
			      </div>
			      <div class="modal-body">
			        ¿Confirma que desea eliminar? 
			      </div>
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
			        <button type="submit" class="btn btn-danger">Eliminar</button>
			      </div>
		    	</form>
		    </div>
		  </div>
		</div>
		
		    
    <!-- aca va el footer.jsp -->
		 <jsp:include page="footer.jsp"/>
		
		 	 <script src="js/bootstrap.bundle.min.js"></script>
		 	 <script>
   		 		function setOradorId(id) {
       			 document.getElementById('idOrador').value = id;
    				}
			</script>
		 	 
			
	 
	</body>
</html>
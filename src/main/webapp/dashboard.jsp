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
		            <a class="navbar-brand" href="index.html">
		                <img src="img/codoacodo-min.png" alt="Codo a Codo logo">
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
		
		<main>
			<section class="mt-5">
		        <h3 class="text-center">Encontra tus oradores favoritos por sus temas</h3>
		        <form class="d-flex" action="<%=request.getContextPath()%>/BuscarOradorTemaController" method="post">
		            <input class="form-control me-2" name="temabuscar" id="temabuscar" type="search" placeholder="Escribi un tema" aria-label="Buscar">
		            <input class="btn btn-outline-success" type="submit" value="Buscar">
		        </form>
	        </section>
			<section class="container mt-5 mb-4" id="restoOradores">
		        <h3 class="text-center">Conoce todos los oradores que se presentan</h2>
		      
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
		
		<footer id="main-footer">
		    <div class="container">
		        <ul class="nav justify-content-center justify-content-lg-between align-items-center">
		            <li class="nav-item">
		                <a class="nav-link" href="#">Preguntas <span>frecuentes</span></a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" href="#">Contáctanos</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" href="#">Prensa</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" href="#">Conferencias</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" href="#">Términos y <span>condiciones</span></a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" href="#">Privacidad</a>
		            </li>
		            <li class="nav-item">
		                <a class="nav-link" href="#">Estudiantes</a>
		            </li>
		        </ul>
		    </div>
		</footer>
		
		 <script src="js/bootstrap.bundle.min.js"></script>
			function setOradorId(id) {
				document.getElementById('idOrador').value=id;
			}
	  </script>
	</body>
</html>
<%@page import="ar.com.integrador.domain.Orador"%>
<%@page import="java.util.List"%>


<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="./favicon.ico" type="image/x-icon">
    <link rel="stylesheet" href="./css/bootstrap.min.css">
    <link rel="stylesheet" href="./css/styles.css">

    <title>Proyecto Integrador Front | Grupo 1</title>
</head>


<body>
    <header class="header"> 
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid justify-content-between">
                <a href="#" class="col-8 col-md-6 col-lg-4 col-xl-3 d-flex align-items-center">
                    <img src="./assets/img/logo_cac.png" alt="Logo de Codo a Codo 4.0" class="imgLogo" loading="lazy" />
                    <h2 class="colorWhite fs-1">Conf Bs As</h2>
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation" class="col-4">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0 w-100 justify-content-end flex-wrap align-items-center">
                        <li class="nav-item">
                            <a class="nav-link active fs-3 p-3" aria-current="page" href="#conference">La conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fs-3 p-3" href="#speakers">Los oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fs-3 p-3" href="#placeAndDate">El lugar y la fecha</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fs-3 p-3" href="#speakerForm">Conviértete en orador</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link colorGreen fs-3 p-3" href="tickets.jsp">Comprar tickets</a>                  
                        </li>
                         <li class="nav-item">
                        <a class="nav-link fs-2 p-3" href="login.jsp">LogIn</a>
                    </li>
                    </ul>
                </div>
            </div>
        </nav>
        <section id="conference" class="d-flex align-items-center py-3">
            <div class="conference__content d-flex flex-column justify-content-center align-items-center align-items-lg-end text-center text-lg-end col-lg-6 offset-lg-6">
                <h1 class="p-3 mb-3">Conf Bs As</h1>
                <p class="mb-5">Bs As llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y
                    experiencia de los expertos que están creando el futuro de Internet. Ven a conocer a miembros del
                    evento, a otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. ¡Te
                    esperamos!</p>
                <div class="d-flex justify-content-evenly w-100 justify-content-lg-end gap-lg-4">
                    <a href="#speakerForm" class="buttons transparentBtn">Quiero ser orador</a>
                    <a href="tickets.jsp" class="buttons greenBtn">Comprar tickets</a>
                </div>
            </div>
        </section>
    </header>


 <main>
 
 
        <section id="speakers" class="container">
            <h2 class="text-center">
                <div>CONOCE A LOS</div>ORADORES
            </h2>
            <div class="d-flex flex-wrap gap-2">
                <div class="col">
                    <div class="card h-100">
                        <img src="./assets/img/SteveJobs.jpg" class="card-img-top" alt="Steve Jobs" loading="lazy">
                        <div class="card-body p-5">
                            <div class="d-flex">
                                <h4 class="backgroundYellow talkTopic">JavaScript</h4>
                                <h4 class="ms-2 backgroundBlue talkTopic">React</h4>
                            </div>
                            <h3 class="card-title mb-4">Steve Jobs</h3>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Temporibus earum voluptates rerum ipsaaccusamus, voluptas totam expedita quae quaerat consequuntur molestias libero tenetur nulla, architecto ex! Dolore similique error alias.</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="./assets/img/BillGates.jpg" class="card-img-top" alt="Bill Gates" loading="lazy">
                        <div class="card-body p-5">
                            <div class="d-flex">
                                <h4 class="backgroundYellow talkTopic">JavaScript</h4>
                                <h4 class="ms-2 backgroundBlue talkTopic">React</h4>
                            </div>
                            <h3 class="card-title mb-4">Bill Gates</h3>
                            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cupiditate ex debitis tempora blanditiis quos, expedita ut harum est praesentium modi dolorem voluptas, aspernatur tempore perferendis vero hic dolores magni. Reiciendis!</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card h-100">
                        <img src="./assets/img/AdaLovalace.jpeg" class="card-img-top" alt="Ada Lovelace" loading="lazy">
                        <div class="card-body p-5">
                            <div class="d-flex">
                                <h4 class="backgroundGray talkTopic">Negocios</h4>
                                <h4 class="ms-2 backgroundRed talkTopic">Startups</h4>
                            </div>
                            <h3 class="card-title mb-4">Ada Lovelace</h3>
                            <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos nisi natus aliquam dolore nihil
                                harum
                                debitis aut tempora tempore earum, est nam voluptates accusantium quo culpa maxime asperiores at
                                placeat.</p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
         </section>
		    <section class="container mb-4 text-center" id="restoOradores">
		       <a class="btn btn-outline-success" href="<%=request.getContextPath()%>/FindAllOradorController">Conoce al resto de los ORADORES</a>
		   </section>
        
        <section id="placeAndDate" class="d-flex flex-column flex-lg-row w-100 gap-1">
            <div class="col-12 col-lg-6 placeAndDate__img"></div>
            <div class="col-12 col-lg-6 placeAndDate__info d-flex flex-column align-items-center align-items-lg-start text-center text-lg-start">
                <h2 class="mb-4">Bs As - Octubre</h2>
                <p class="mb-4">Buenos Aires es la provincia y localidad más grande del estado de Argentina, en los Estados Unidos, Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600 km<sup>2</sup> de superficie).</p>
                <a href="./pages/404.html" class="buttons transparentBtn p-2">Conocé más</a>
            </div>
        </section>
        <section id="speakerForm" class="text-center col-lg-6 offset-lg-3">
            <h2 class="speakerForm__h2"><div>CONVIÉRTETE EN UN</div>ORADOR</h2>
            <p class="fs-3">Anótate como orador para dar una <span class="fs-3">charla ignate</span>. ¡Cuéntanos de qué quieres hablar!</p>
            
             <form action="<%=request.getContextPath()%>/CreateOradorController" method="POST">
		                   
            
            <div class="speakerForm__form text-start">
                <div class="d-flex flex-column flex-lg-row gap-lg-5 w-100">
                    <input  class="my-2 w-100 p-3" type="text" id="nombre" name="nombre" placeholder="Nombre" aria-label="Nombre" required>
                    <input class="my-2 w-100 p-3" type="text" id="apellido" name="apellido" placeholder="Apellido" aria-label="Apellido" required">
                </div>
                <div class="col mt-2 mb-4">
		            <input type="email" class="form-control p-3" name="mail" placeholder="Email" aria-label="Email" required>
		        </div>
                
                
                 <textarea class="form-control mt-3" name="tema" id="exampleFormControlTextarea1" rows="4"
		                                placeholder="Sobre qué quieres hablar?" required></textarea>
                <p>Recuerda incluir un título para tu charla</p>
                <button type="submit" class="btn btn-lg btn-form w-100 buttons speakerForm__form__btn mt-3 p-3">Enviar</button>
                
                </div>
            </form>
        </section>
    </main>
    
    <!-- aca va el footer.jsp -->
		 <jsp:include page="footer.jsp"/>
    
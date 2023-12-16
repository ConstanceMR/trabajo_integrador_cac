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

    <title>Comprar tickets</title>
</head>

<body>
    <header class="header headerTickets">
        <nav class="navbar navbar-expand-lg navbar-dark">
            <div class="container-fluid justify-content-between">
                <a href="../index.html" class="col-8 col-md-6 col-lg-4 col-xl-3 d-flex align-items-center">
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
                            <a class="nav-link active fs-2 p-3" aria-current="page" href="index.jsp#conference">La
                                conferencia</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fs-2 p-3" href="index.jspl#speakers">Los oradores</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fs-2 p-3" href="index.jsp#placeAndDate">El lugar y la fecha</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link fs-2 p-3" href="index.jsp#speakerForm">Conviértete en orador</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link colorGreen fs-2 p-3" href="#">Comprar tickets</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </header>
    <main class="p-5 mainTickets d-flex flex-column justify-content-center align-items-center col-md-10 offset-md-1 col-lg-8 offset-lg-2">
        <section class="d-flex flex-wrap justify-content-center align-items-center gap-5 gap-lg-2 w-100">
            <div class="card cardCategory border-blue">
                <div class="card-body d-flex flex-column align-items-center justify-content-evenly">
                    <h2 class="card-title fs-1">Estudiante</h4>
                    <p class="card-text">Tiene un descuento</p>
                    <h3 class="card-title">80%</h3>
                    <p class="card-text"><small class="text-muted">*presentar documentación</small></p>
                </div>
            </div>
            <div class="card cardCategory border-lightblue">
                <div class="card-body d-flex flex-column align-items-center justify-content-evenly">
                    <h2 class="card-title fs-1">Trainee</h4>
                    <p class="card-text">Tiene un descuento</p>
                    <h3 class="card-title">50%</h3>
                    <p class="card-text"><small class="text-muted">*presentar documentación</small></p>
                </div>
            </div>
            <div class="card cardCategory border-yellow">
                <div class="card-body d-flex flex-column align-items-center justify-content-evenly">
                    <h2 class="card-title fs-1 ">Junior</h4>
                    <p class="card-text">Tiene un descuento</p>
                    <h3 class="card-title">15%</h3>
                    <p class="card-text"><small class="text-muted">*presentar documentación</small></p>
                </div>
            </div>
        </section>
        <h1 class="text-center text-uppercase my-3"><div>venta</div>valor de ticket $200</h1>
        <form action="" id="form-tickets" class="d-flex flex-column gap-4 p-3 p-xl-5 col-12 col-xl-9">
            <div class="d-flex flex-column flex-lg-row gap-3">
                <div class="w-100">
                    <input type="text" placeholder="Nombre" id="first_name" class="form-control w-100" required/>
                    <div class="invalid-feedback" id="error-firstName">
                        <p>Ingrese su nombre</p>
                    </div>
                </div>
                <div class="w-100">
                    <input type="text" placeholder="Apellido" id="last_name" class="form-control w-100" required/>
                    <div class="invalid-feedback" id="error-lastName">
                        <p>Ingrese su apellido</p>
                    </div>
                </div>
            </div>
            <div class="w-100">
                <input type="email" name="email" placeholder="Correo" id="email" class="form-control w-100" required/>
                <div class="invalid-feedback" id="error-email">
                    <p>Ingrese un correo válido</p>
                </div>
            </div>
            <div class="d-flex flex-column flex-lg-row gap-3 w-100">
                <div class="w-100">
                    <div class="d-flex flex-lg-column gap-3 w-100">
                        <label for="quantity" class="me-3 form-label">Cantidad</label>
                        <input type="number" name="quantity" id="quantity" placeholder="cantidad" class="form-control w-100" min="1" required>
                    </div>
                    <div class="invalid-feedback" id="error-quantity">
                        <p>Ingrese la cantidad de tickets</p>
                    </div>
                </div>
                <div class="d-flex flex-lg-column gap-3 w-100">
                    <label for="category" class="me-3 form-label">Categoría</label>
                    <select class="form-select" aria-label="CategorÃ­a" class="w-100" id="category">
                        <option value="" selected>--Seleccione una opción--</option>
                        <option value="0">Sin categoría</option>
                        <option value="1">Estudiante</option>
                        <option value="2">Trainee</option>
                        <option value="3">Junior</option>
                    </select>
                    <div class="invalid-feedback" id="error-category">
                        <p>Elija una categoría</p>
                    </div>
                </div>
            </div>
            <p class="totalPrice p-3">Total a Pagar: $<span id="total"></span></p>
            <div class="d-flex gap-3">
                <button type="reset" id="btnDelete" class="btn btn-success w-100 p-3 fs-3">Borrar</button>
                <button type="button" id="btnPurchase" class="btn btn-success w-100 p-3 fs-3">Resumen</button>
            </div>
        </form>
    </main>
    <footer class="footer p-3 d-flex align-items-center">
        <div class="container h-100">
            <ul class="d-flex flex-wrap justify-content-evenly align-items-center h-100">
                <li class="p-3"><a href="404.jpg">Preguntas frecuentes</a></li>
                <li class="p-3"><a href="404.jpg">Contáctanos</a></li>
                <li class="p-3"><a href="404.jpg">Prensa</a></li>
                <li class="p-3"><a href="404.jpg">Conferencias</a></li>
                <li class="p-3"><a href="404.jpg">Términos y condiciones</a></li>
                <li class="p-3"><a href="404.jpg">Privacidad</a></li>
                <li class="p-3"><a href="404.jpg">Estudiantes</a></li>
            </ul>
        </div>
    </footer>
    <script src="js/bootstrap.bundle.min.js"></script>
    <script src="js/tickets.js"></script>
</body>

</html>
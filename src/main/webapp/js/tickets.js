const valorTicket = 200;

let descEstudiante = 80;
let descTrainee = 50;
let descJunior = 15;

let nombre = document.getElementById("nombre");
let divErrorNombre = document.getElementById("mensajeErrorNombre");
let apellido = document.getElementById("apellido");
let divErrorApellido = document.getElementById("mensajeErrorApellido");
let mail = document.getElementById("mail");
let divErrorMail = document.getElementById("mensajeErrorMail");
let cantidadTickets = document.getElementById("cantidadTickets");
let divErrorCantidadTickets = document.getElementById("mensajeErrorCantidadTickets");
let categoria = document.getElementById("categoria");
let divErrorCategoria = document.getElementById("mensajeErrorCategoria");

const quitarClaseError = () => {
    let listaNodos = document.querySelectorAll(".form-control, .form-select");
    for (let i=0; i<listaNodos.length; i++) {
        listaNodos[i].classList.remove('is-invalid');
    }
    let listaNodosDiv = document.querySelectorAll(".invalid-feedback");
    for (let i=0; i<listaNodosDiv.length; i++) {
    listaNodosDiv[i].classList.remove('divBloque');
    }

}

const totalAPagar = () => {

    quitarClaseError();
    

    if((nombre.value === "")||(!isNaN (nombre.value))) {
        nombre.classList.add("is-invalid");
        divErrorNombre.classList.add("divBloque");
        nombre.focus();
        return;
    }
    if((apellido.value === "")||(!isNaN (apellido.value))) {
        apellido.classList.add("is-invalid");
        divErrorApellido.classList.add("divBloque");
        apellido.focus();
        return;
    }
    const mailValido = mail => {
        return   /^\w+([.-_+]?\w+)*@\w+([.-]?\w+)*(\.\w{2,10})+$/.test(mail);
    }
    if(!mailValido(mail.value)) {
        mail.classList.add("is-invalid");
        divErrorMail.classList.add("divBloque");
        mail.focus();
        return;
    }
    if((cantidadTickets.value === 0)||(cantidadTickets.value === "")||(isNaN(cantidadTickets.value))) {
        cantidadTickets.classList.add("is-invalid");
        divErrorCantidadTickets.classList.add("divBloque");
        cantidadTickets.focus();
        return;
    }
    if(categoria.value === ""){
        categoria.classList.add("is-invalid");
        divErrorCategoria.classList.add("divBloque");
        categoria.focus();
        return;
    }


let totalValorTickets = (cantidadTickets.value)* valorTicket;

switch (categoria.value) {
    case "0":
        totalValorTickets
        break;
    case "1":
        totalValorTickets = totalValorTickets-((descEstudiante * totalValorTickets)/100);
        break;  
    case "2":
        totalValorTickets = totalValorTickets-(descTrainee/100 * totalValorTickets);
        break;  
    case "3":
        totalValorTickets = totalValorTickets-(descJunior/100 * totalValorTickets);
        break;       
}


totalPago.innerHTML = totalValorTickets;
}
btnResumen.addEventListener('click', totalAPagar);


const resetTotalAPagar = () => {
    quitarClaseError();
    totalPago.innerHTML = "";
}

btnBorrar.addEventListener('click', resetTotalAPagar);


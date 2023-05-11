function mostrarMensaje() {
	document.getElementById("mensaje").textContent = "¡Hola! ¡Gracias por visitar mi sitio web!";
}

function generarNumero() {
	var numero = Math.floor(Math.random() * 100) + 1;
	document.getElementById("numero").textContent = "Tu número aleatorio es: " + numero;
}

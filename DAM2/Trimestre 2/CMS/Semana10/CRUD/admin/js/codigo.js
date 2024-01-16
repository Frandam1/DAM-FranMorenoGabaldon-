$(document).ready(function(){
    console.log("Listo")
    $("td").dblclick(function(){
        $(this).attr('contenteditable','true').blur(function(){
            selector = $(this)
            selector.attr('contenteditable','false') 
            var valoraenviar = selector.text();
            var tabla = selector.attr("tabla")
            var identificador = selector.attr("Identificador")
            var columna = selector.attr("columna")
            console.log("valor "+valoraenviar+" tabla "+tabla+" columna "+columna+" identificador "+identificador)
            $.ajax({
                url: "inc/ajaxmodifica.php",
                type: "GET",
                data: {
                    valor: valoraenviar,
                    tabla: tabla,
                    columna: columna,
                    Identificador: identificador
                },
                success: function(response) {
                    // Manejar la respuesta si es necesario
                    console.log(response);
                },
                error: function(error) {
                    console.error("Error en la solicitud AJAX:", error);
                }
            });
        });
    });
});

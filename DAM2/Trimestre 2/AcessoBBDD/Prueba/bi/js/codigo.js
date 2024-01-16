var peticion = " SELECT "
var columnas = " ALL "
var desde = " FROM "
var tabla = " " 
var condiciones = " ";    
var limite = "LIMIT 1000000";   

$(document).ready(function(){
    $("#seleccionatabla").load("php/cargatablas.php")
    resultadostabla()

    $("#seleccionatabla").change(function(){
        tabla = $(this).val();
        resultadostabla()
        $("#seleccionacampos").load("php/cargacampos.php?tabla="+tabla);
    })
    
    $("#seleccionacampos").change(function(){
        seleccionado = []
        $('input[name="seleccionacampos"]').each(function(){
            if ($(this).is(":checked")){
                seleccionado.push($(this).val());
            }
        })
        console.table(seleccionado)
        columnas = "";
        for (var i = 0; i < seleccionado.length; i++) {
            columnas += seleccionado[i];
            if ($("input[alias='" + seleccionado[i] + "']").val() !== "") {
                columnas += " AS " + $("input[alias='" + seleccionado[i] + "']").val();
            }
            columnas += ",";
        }
        
        columnas = columnas.slice(0, -1);
        resultadostabla()

        $("#seleccionacondiciones").html("")
        for(var i = 0;i<seleccionado.length;i++){
            $("#seleccionacondiciones").append('<div class="condicion"><input type="text" name="" class="nuevacondicion" placeholder="'+seleccionado[i]+'"campo="'+seleccionado[i]+'""></div><br>');

        }
        $("#seleccionaalias").html("")
        for (var i = 0; i < seleccionado.length; i++) {
            $("#seleccionaalias").append('<div class="alias"><input type="text" name="" class="nuevoalias" alias="' + seleccionado[i] + '" placeholder="" campo="' + seleccionado[i] + '"></div><br>');
        }
        
  
    })
    //$(".nuevacondicion").change(function(){
        $(document).on("keydown", ".nuevacondicion", function () {
            condiciones = " WHERE ";
            $(".nuevacondicion").each(function () {
                if ($(this).val() != "") {
                    condiciones += $(this).attr('campo') + " LIKE '%" + $(this).val() + "%' AND ";
                }
            });
            condiciones = condiciones.slice(0, -5); // Elimina el último " AND "
            resultadostabla();
        });
        $(document).on("keydown", ".nuevoalias", function () {
            seleccionado = []
            $('input[name="seleccionacampos"]').each(function () {
                if ($(this).is(":checked")) {
                    seleccionado.push($(this).val());
                }
            });
            
            condiciones = condiciones.slice(0, -5); // Elimina el último " AND "
            resultadostabla();
        });
        
        $("#limite").change(function () {
            limite = " LIMIT " + $(this).val() + " ";
            resultadostabla();
        });
        
})

function resultadostabla(){
    if(tabla){
    $("#sql").text(peticion+columnas+desde+tabla+condiciones+limite)
    $("#resultadostabla").
    load("php/resultadostabla.php?sql="+encodeURI(peticion+columnas+desde+tabla+condiciones+limite))
    } else {
        $("#sql").text("No se ha seleccionado una tabla.");
        $("#resultadostabla").empty(); // Limpia el contenido
}
} 
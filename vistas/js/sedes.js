$(document).on("click", ".btnEditarSede", function(){
    var idSede = $(this).attr("idSede");
    //console.log("idSede: ", idSede); //Bloque de código para capturar el atributo id de sedes.php

    var datos = new FormData();
    datos.append("idSede", idSede);
    $.ajax({
        url: "ajax/sedes.ajax.php",
        method: "POST",
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        dataType: "json",
        success: function(respuesta){
            console.log("Respuesta: ", respuesta);
            $("#nombreEditSede").val(respuesta["nombre_sede"]);
            $("#direccionEditSede").val(respuesta["direccion"]);
            $("#descripcionEditSede").val(respuesta["descripcion"]);
            $("#idEditSede").val(respuesta["id_sede"]);
        }
    })
})

$(document).on("click",".btnActivarSede", function(){
    var idSedeActivar = $(this).attr("idSede");
    console.log("SEDE ID: ", idSedeActivar); //Bloque de código para capturar el atributo id de sedes.php
    var estadoSede = $(this).attr("estadoSede");
    console.log("Estado Sede:", estadoSede)

    var daatos = new FormData();
    datos.append("idSedeActivar", idSedeActivar);
    datos.append("estadoSede", estadoSede);

    $.ajax({
        url: "ajax/idSedeActivar.ajax.php",
        method: "POST",
        data: datos,
        cache: false,
        contentType: false,
        processData: false,
        succes: function(respuesta){
            console.log("respuesta: ", respuesta);
        }

    })

    if (estadoSede == "inactiva"){
        $(this).removeClass("btn-success");
        $(this).addClass("btn-danger");
        $(this).html("inactiva");
        $(this).attr("estadoSede", "activa");
    }else{
        $(this).removeClass("btn-danger");
        $(this).addClass("btn-success");
        $(this).html("activa");
        $(this).attr("estadoSede", "inactiva");
    }

})



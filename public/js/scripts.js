$(document).ready(function(){

    App.init();

    $("#primerNombre").blur(function(){
        if($(this).val() === '') {
            $("#errorPrimerNombre").remove();
            $(this).after("<span style='color: #dd4b39;' id='errorPrimerNombre'>El Primer Nombre Es Obligatorio!</span");
            $(this).css("border-color", "#dd4b39");
        } else {
            $("#errorPrimerNombre").remove();
            $(this).css("border-color", "#00a65a");
        } 
    });

    $("#segundoNombre").blur(function(){
        if($(this).val() === '') {
            $("#errorSegundoNombre").remove();
            $(this).after("<span style='color: #dd4b39;' id='errorSegundoNombre'>El Segundo Nombre Es Obligatorio!</span");
            $(this).css("border-color", "#dd4b39");
        } else {
            $("#errorSegundoNombre").remove();
            $(this).css("border-color", "#00a65a");
        } 
    });

    $("#primerApellido").blur(function(){
        if($(this).val() === '') {
            $("#errorPrimerApellido").remove();
            $(this).after("<span style='color: #dd4b39;' id='errorPrimerApellido'>El Primer Apellido Es Obligatorio!</span");
            $(this).css("border-color", "#dd4b39");
        } else {
            $("#errorPrimerApellido").remove();
            $(this).css("border-color", "#00a65a");
        } 
    });

    $("#segundoApellido").blur(function(){
        if($(this).val() === '') {
            $("#errorSegundoApellido").remove();
            $(this).after("<span style='color: #dd4b39;' id='errorSegundoApellido'>El Segundo Apellido Es Obligatorio!</span");
            $(this).css("border-color", "#dd4b39");
        } else {
            $("#errorSegundoApellido").remove();
            $(this).css("border-color", "#00a65a");
        } 
    });

    $("#rut").rut({
        formatOn: 'keyup',
        minimumLength: 8,
        validateOn: 'change'
    });

    $("#rut").blur(function(){
        if($(this).val() === ''){
            $("#errorRut").remove();
            $(this).after("<span style='color: #dd4b39;' id='errorRut'>El RUT Es Obligatorio!</span");
            $(this).css("border-color", "#dd4b39");
        } else {
    
            if(!$.validateRut($(this).val())) {
                $("#errorRut").remove();
                $(this).after("<span style='color: #dd4b39;' id='errorRut'>Debes Ingresar Un Rut Valido!</span");
                $(this).css("border-color", "#dd4b39");
            } else {
                $("#errorRut").remove();
                $(this).css("border-color", "#00a65a");
            }
        }
    });

    $("#telefono").blur(function(){
        if($(this).val() === '') {
            $("#errorTelefono").remove();
            $(this).after("<span style='color: #dd4b39;' id='errorTelefono'>El Telefono Es Obligatorio!</span");
            $(this).css("border-color", "#dd4b39");
        } else {
            $("#errorTelefono").remove();
            $(this).css("border-color", "#00a65a");
        } 
    });

    $("#correo").blur(function(){
        if($(this).val() === '') {
            $("#errorCorreo").remove();
            $(this).after("<span style='color: #dd4b39;' id='errorCorreo'>El Correo Es Obligatorio!</span");
            $(this).css("border-color", "#dd4b39");
        } else {
            $("#errorCorreo").remove();
            $(this).css("border-color", "#00a65a");
        } 
    });

    $("#clave").blur(function(){
        if($(this).val() === '') {
            $("#errorClave").remove();
            $(this).after("<span style='color: #dd4b39;' id='errorClave'>La Clave Es Obligatorio!</span");
            $(this).css("border-color", "#dd4b39");
        } else {
            $("#errorClave").remove();
            $(this).css("border-color", "#00a65a");
        } 
    });

    $("#formRegistro").submit(function(event){

        if($("#primerNombre").val() === '') {
            $("#errorPrimerNombre").remove();
            $("#primerNombre").after("<span style='color: #dd4b39;' id='errorPrimerNombre'>El Primer Nombre Es Obligatorio!</span");
            $("#primerNombre").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorPrimerNombre").remove();
            $("#primerNombre").css("border-color", "#00a65a");
        }

        if($("#segundoNombre").val() === '') {
            $("#errorSegundoNombre").remove();
            $("#segundoNombre").after("<span style='color: #dd4b39;' id='errorSegundoNombre'>El Segundo Nombre Es Obligatorio!</span");
            $("#segundoNombre").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorSegundoNombre").remove();
            $("#segundoNombre").css("border-color", "#00a65a");
        }

        if($("#primerApellido").val() === '') {
            $("#errorPrimerApellido").remove();
            $("#primerApellido").after("<span style='color: #dd4b39;' id='errorPrimerApellido'>El Primer Apellido Es Obligatorio!</span");
            $("#primerApellido").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorPrimerApellido").remove();
            $("#primerApellido").css("border-color", "#00a65a");
        }

        if($("#segundoApellido").val() === '') {
            $("#errorSegundoApellido").remove();
            $("#segundoApellido").after("<span style='color: #dd4b39;' id='errorSegundoApellido'>El Segundo Apellido Es Obligatorio!</span");
            $("#segundoApellido").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorSegundpApellido").remove();
            $("#segundoApellido").css("border-color", "#00a65a");
        }

        if($("#rut").val() === ''){
            $("#errorRut").remove();
            $("#rut").after("<span style='color: #dd4b39;' id='errorRut'>El RUT Es Obligatorio!</span");
            $("#rut").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {

            if(!$.validateRut($("#rut").val())) {
                $("#errorRut").remove();
                $("#rut").after("<span style='color: #dd4b39;' id='errorRut'>Debes Ingresar Un Rut Valido!</span");
                $("#rut").css("border-color", "#dd4b39");
                event.preventDefault();
            } else {
                $("#errorRut").remove();
                $("#errorRut").css("border-color", "#00a65a");
            }
        }

        if($("#telefono").val() === '') {
            $("#errorTelefono").remove();
            $("#telefono").after("<span style='color: #dd4b39;' id='errorTelefono'>El Telefono Es Obligatorio!</span");
            $("#telefono").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorTelefono").remove();
            $("#telefono").css("border-color", "#00a65a");
        }

        if($("#correo").val() === '') {
            $("#errorCorreo").remove();
            $("#correo").after("<span style='color: #dd4b39;' id='errorCorreo'>El Correo Es Obligatorio!</span");
            $("#correo").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorCorreo").remove();
            $("#correo").css("border-color", "#00a65a");
        }

        if($("#clave").val() === '') {
            $("#errorClave").remove();
            $("#clave").after("<span style='color: #dd4b39;' id='errorClave'>La Clave Es Obligatorio!</span");
            $("#clave").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorClave").remove();
            $("#clave").css("border-color", "#00a65a");
        }

    });

    $("#formLogin").submit(function(event){

        if($("#correo").val() === '') {
            $("#errorCorreo").remove();
            $("#correo").after("<span style='color: #dd4b39;' id='errorCorreo'>El Correo Es Obligatorio!</span");
            $("#correo").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorCorreo").remove();
            $("#correo").css("border-color", "#00a65a");
        }

        if($("#clave").val() === '') {
            $("#errorClave").remove();
            $("#clave").after("<span style='color: #dd4b39;' id='errorClave'>La Clave Es Obligatorio!</span");
            $("#clave").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorClave").remove();
            $("#clave").css("border-color", "#00a65a");
        }

    });

    $("#nombreInstitucion").blur(function(){
        if($(this).val() === '') {
            $("#errorNombreInstitucion").remove();
            $(this).after("<span style='color: #dd4b39;' id='errorNombreInstitucion'>El Nombre Es Obligatorio!</span");
            $(this).css("border-color", "#dd4b39");
        } else {
            $("#errorNombreInstitucion").remove();
            $(this).css("border-color", "#00a65a");
        } 
    });

    $("#direccionInstitucion").blur(function(){
        if($(this).val() === '') {
            $("#errorDireccionInstitucion").remove();
            $(this).after("<span style='color: #dd4b39;' id='errorDireccionInstitucion'>La Direccion Es Obligatorio!</span");
            $(this).css("border-color", "#dd4b39");
        } else {
            $("#errorDireccionInstitucion").remove();
            $(this).css("border-color", "#00a65a");
        } 
    });

    $("#formCrearInstitucion").submit(function(event){

        if($("#nombreInstitucion").val() === '') {
            $("#errorNombreInstitucion").remove();
            $("#nombreInstitucion").after("<span style='color: #dd4b39;' id='errorNombreInstitucion'>El Nombre Es Obligatorio!</span");
            $("#nombreInstitucion").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorNombreInstitucion").remove();
            $("#nombreInstitucion").css("border-color", "#00a65a");
        }

        if($("#direccionInstitucion").val() === '') {
            $("#errorDireccionInstitucion").remove();
            $("#direccionInstitucion").after("<span style='color: #dd4b39;' id='errorDireccionInstitucion'>La Direccion Es Obligatorio!</span");
            $("#direccionInstitucion").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorDireccionInstitucion").remove();
            $("#direccionInstitucion").css("border-color", "#00a65a");
        }

    });

    $("#formActualizarInstitucion").submit(function(event){

        if($("#nombreInstitucion").val() === '') {
            $("#errorNombreInstitucion").remove();
            $("#nombreInstitucion").after("<span style='color: #dd4b39;' id='errorNombreInstitucion'>El Nombre Es Obligatorio!</span");
            $("#nombreInstitucion").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorNombreInstitucion").remove();
            $("#nombreInstitucion").css("border-color", "#00a65a");
        }

        if($("#direccionInstitucion").val() === '') {
            $("#errorDireccionInstitucion").remove();
            $("#direccionInstitucion").after("<span style='color: #dd4b39;' id='errorDireccionInstitucion'>La Direccion Es Obligatorio!</span");
            $("#direccionInstitucion").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorDireccionInstitucion").remove();
            $("#direccionInstitucion").css("border-color", "#00a65a");
        }

    });

    $("#region").change(function(){
        var idRegion = $(this).val();
        $.get('/ObtenerProvincia?idRegion=' + idRegion,  function(data){                    
            $("#provincia").empty();
            $.each(data, function(i, pro){
                $("#provincia").append("<option value='" + pro.id_provincia + "'>" + pro.nombre_provincia + "</option>");
            });

            var idProvincia = $("#provincia").val();
            $.get('/ObtenerComuna?idProvincia=' + idProvincia,  function(data){                    
                $("#comuna").empty();
                $.each(data, function(i, pro){
                    $("#comuna").append("<option value='" + pro.id_comuna + "'>" + pro.nombre_comuna + "</option>");
                });

                var idComuna = $("#comuna").val();
                $.get('/ObtenerHospedaje?idComuna=' + idComuna,  function(data){                    
                    $("#hospedaje").empty();
                    $.each(data, function(i, pro){
                        $("#hospedaje").append("<option value='" + pro.id_hospedaje + "'>" + pro.nombre_hospedaje + "</option>");
                    });
                });

            });

        });
    });

    $("#provincia").change(function(){
        var idProvincia = $(this).val();
        $.get('/ObtenerComuna?idProvincia=' + idProvincia,  function(data){                    
            $("#comuna").empty();
            $.each(data, function(i, pro){
                $("#comuna").append("<option value='" + pro.id_comuna + "'>" + pro.nombre_comuna + "</option>");
            });

            var idComuna = $("#comuna").val();
            $.get('/ObtenerHospedaje?idComuna=' + idComuna,  function(data){                    
                $("#hospedaje").empty();
                $.each(data, function(i, pro){
                    $("#hospedaje").append("<option value='" + pro.id_hospedaje + "'>" + pro.nombre_hospedaje + "</option>");
                });
            });

        });
    });

    $("#comuna").change(function(){
        var idComuna = $(this).val();
        $.get('/ObtenerHospedaje?idComuna=' + idComuna,  function(data){                    
            $("#hospedaje").empty();
            $.each(data, function(i, pro){
                $("#hospedaje").append("<option value='" + pro.id_hospedaje + "'>" + pro.nombre_hospedaje + "</option>");
            });
        });
    });

    $("#infoHospedaje").click(function(){
        var idHospedaje = $("#hospedaje").val();
        $.get('/ObtenerInformacionHospedaje?idHospedaje=' + idHospedaje,  function(data){
            $("#tituloHospedaje").empty();
            $("#nombreRegion").empty();
            $("#nombreProvincia").empty();
            $("#nombreComuna").empty();
            $("#nombreHospedaje").empty();
            $("#cantPiezas").empty();
            $("#cantPersonas").empty();
            $("#montoBase").empty();
            $("#tituloHospedaje").append(data.nombre_hospedaje);
            $("#nombreRegion").append(data.nombre_region);
            $("#nombreProvincia").append(data.nombre_provincia);
            $("#nombreComuna").append(data.nombre_comuna);
            $("#nombreHospedaje").append(data.nombre_hospedaje);
            $("#cantPiezas").append(data.cantidad_piezas_tipo_hospedaje);
            $("#cantPersonas").append(data.cantidad_personas_tipo_hospedaje);
            $("#montoBase").append(data.monto_base_tipo_hospedaje);
        });
    });

    $("#infoTransporte").click(function(){
        var idTransporte = $("#transporte").val();
        $.get('/ObtenerInformacionTransporte?idTransporte=' + idTransporte,  function(data){
            $("#tituloTransporte").empty();
            $("#nombreTipoTransporte").empty();
            $("#montoBaseTransporte").empty();
            $("#tituloTransporte").append(data.nombre_transporte);
            $("#nombreTipoTransporte").append(data.nombre_transporte);
            $("#montoBaseTransporte").append(data.monto_base_transporte);
        });
    });

    $("#fechaInicio").change(function(){
        if($(this).val() === '') {
            $("#errorFechaInicio").remove();
            $(this).after("<span style='color: #dd4b39;' id='errorFechaInicio'>La Fecha De Inicio Es Obligatorio!</span");
            $(this).css("border-color", "#dd4b39");
        } else {
            $("#errorFechaInicio").remove();
            $(this).css("border-color", "#00a65a");

            var idHospedaje = $("#hospedaje").val();
            var idTransporte = $("#transporte").val();
            var fechaInicio = $("#fechaInicio").val();
            var fechaFinal = $("#fechaFinal").val();

            $("#fechaFinal").attr({"min" : $(this).val() });
            $("#fechaFinal").prop("disabled", false);

            $.get('/ObtenerInformacionViaje?idHospedaje=' + idHospedaje + '&idTransporte=' + idTransporte + '&fechaInicio=' + fechaInicio + '&fechaFinal=' + fechaFinal  ,  function(data){
                $("#montoTotal").empty();
                $("#cantDias").empty();
                $("#montoTotal").append('Monto Total : $ ' + data.monto_total);
                $("#cantDias").append('Cantidad de Dias : ' + data.cantidad_dias);
            });
        } 
    });

    $("#fechaFinal").change(function(){
        if($(this).val() === '') {
            $("#errorFechaFinal").remove();
            $(this).after("<span style='color: #dd4b39;' id='errorFechaFinal'>La Fecha Final Es Obligatorio!</span");
            $(this).css("border-color", "#dd4b39");
        } else {
            $("#errorFechaFinal").remove();
            $(this).css("border-color", "#00a65a");

            var idHospedaje = $("#hospedaje").val();
            var idTransporte = $("#transporte").val();
            var fechaInicio = $("#fechaInicio").val();
            var fechaFinal = $("#fechaFinal").val();

            $.get('/ObtenerInformacionViaje?idHospedaje=' + idHospedaje + '&idTransporte=' + idTransporte + '&fechaInicio=' + fechaInicio + '&fechaFinal=' + fechaFinal  ,  function(data){
                $("#montoTotal").empty();
                $("#cantDias").empty();
                $("#montoTotal").append('Monto Total : $ ' + data.monto_total);
                $("#cantDias").append('Cantidad de Dias : ' + data.cantidad_dias);
            });
        } 
    });


    $("#transporte").change(function(){

        var idHospedaje = $("#hospedaje").val();
        var idTransporte = $("#transporte").val();
        var fechaInicio = $("#fechaInicio").val();
        var fechaFinal = $("#fechaFinal").val();

        $.get('/ObtenerInformacionViaje?idHospedaje=' + idHospedaje + '&idTransporte=' + idTransporte + '&fechaInicio=' + fechaInicio + '&fechaFinal=' + fechaFinal  ,  function(data){
            $("#montoTotal").empty();
            $("#cantDias").empty();
            $("#montoTotal").append('Monto Total : $ ' + data.monto_total);
            $("#cantDias").append('Cantidad de Dias : ' + data.cantidad_dias);
        });
    });

    $("#hospedaje").change(function(){

        var idHospedaje = $("#hospedaje").val();
        var idTransporte = $("#transporte").val();
        var fechaInicio = $("#fechaInicio").val();
        var fechaFinal = $("#fechaFinal").val();
        
        $.get('/ObtenerInformacionViaje?idHospedaje=' + idHospedaje + '&idTransporte=' + idTransporte + '&fechaInicio=' + fechaInicio + '&fechaFinal=' + fechaFinal  ,  function(data){
            $("#montoTotal").empty();
            $("#cantDias").empty();
            $("#montoTotal").append('Monto Total : $ ' + data.monto_total);
            $("#cantDias").append('Cantidad de Dias : ' + data.cantidad_dias);
        });
    });

    $("#formRegistrarViaje").submit(function(event){

        if($("#fechaInicio").val() === '') {
            $("#errorFechaInicio").remove();
            $("#fechaInicio").after("<span style='color: #dd4b39;' id='errorFechaInicio'>La Fecha De Inicio Es Obligatorio!</span");
            $("#fechaInicio").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorFechaInicio").remove();
            $("#fechaInicio").css("border-color", "#00a65a");
        }

        if($("#fechaFinal").val() === '') {
            $("#errorFechaFinal").remove();
            $("#fechaFinal").after("<span style='color: #dd4b39;' id='errorFechaFinal'>La Fecha Final Es Obligatorio!</span");
            $("#fechaFinal").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorFechaFinal").remove();
            $("#fechaFinal").css("border-color", "#00a65a");
        }

    });

    $("#montoIncremental").blur(function(){
        if($(this).val() === '') {
            $("#errorMontoIncremental").remove();
            $(this).after("<span style='color: #dd4b39;' id='errorMontoIncremental'>El Monto A Pagar Es Obligatorio!</span");
            $(this).css("border-color", "#dd4b39");
        } else {
            $("#errorMontoIncremental").remove();
            $(this).css("border-color", "#00a65a");
        } 
    });

    $("#formPagarViaje").submit(function(event){

        if($("#montoIncremental").val() === '') {
            $("#errorMontoIncremental").remove();
            $("#montoIncremental").after("<span style='color: #dd4b39;' id='errorMontoIncremental'>El Monto A Pagar Es Obligatorio!</span");
            $("#montoIncremental").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorMontoIncremental").remove();
            $("#montoIncremental").css("border-color", "#00a65a");
        }
    });

    $("#perfil").change(function(){
        if ($(this).val() == 3) {

            $("#fechaNacimiento").prop("disabled", true);
            $("#direccionDomicilio").prop("disabled", true);

            $("#errorFechaNacimiento").remove();
            $("#errorDireccionDomicilio").remove();

            $("#fechaNacimiento").css("border-color", "#d3d8de");
            $("#direccionDomicilio").css("border-color", "#d3d8de");
        }
        else{

            $("#fechaNacimiento").prop("disabled", false);
            $("#direccionDomicilio").prop("disabled", false);
        }
    });

    $("#formRegistrarUsuarios").submit(function(event){

        if($("#primerNombre").val() === '') {
            $("#errorPrimerNombre").remove();
            $("#primerNombre").after("<span style='color: #dd4b39;' id='errorPrimerNombre'>El Primer Nombre Es Obligatorio!</span");
            $("#primerNombre").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorPrimerNombre").remove();
            $("#primerNombre").css("border-color", "#00a65a");
        }

        if($("#segundoNombre").val() === '') {
            $("#errorSegundoNombre").remove();
            $("#segundoNombre").after("<span style='color: #dd4b39;' id='errorSegundoNombre'>El Segundo Nombre Es Obligatorio!</span");
            $("#segundoNombre").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorSegundoNombre").remove();
            $("#segundoNombre").css("border-color", "#00a65a");
        }

        if($("#primerApellido").val() === '') {
            $("#errorPrimerApellido").remove();
            $("#primerApellido").after("<span style='color: #dd4b39;' id='errorPrimerApellido'>El Primer Apellido Es Obligatorio!</span");
            $("#primerApellido").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorPrimerApellido").remove();
            $("#primerApellido").css("border-color", "#00a65a");
        }

        if($("#segundoApellido").val() === '') {
            $("#errorSegundoApellido").remove();
            $("#segundoApellido").after("<span style='color: #dd4b39;' id='errorSegundoApellido'>El Segundo Apellido Es Obligatorio!</span");
            $("#segundoApellido").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorSegundpApellido").remove();
            $("#segundoApellido").css("border-color", "#00a65a");
        }

        if($("#rut").val() === ''){
            $("#errorRut").remove();
            $("#rut").after("<span style='color: #dd4b39;' id='errorRut'>El RUT Es Obligatorio!</span");
            $("#rut").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {

            if(!$.validateRut($("#rut").val())) {
                $("#errorRut").remove();
                $("#rut").after("<span style='color: #dd4b39;' id='errorRut'>Debes Ingresar Un Rut Valido!</span");
                $("#rut").css("border-color", "#dd4b39");
                event.preventDefault();
            } else {
                $("#errorRut").remove();
                $("#errorRut").css("border-color", "#00a65a");
            }
        }

        if($("#telefono").val() === '') {
            $("#errorTelefono").remove();
            $("#telefono").after("<span style='color: #dd4b39;' id='errorTelefono'>El Telefono Es Obligatorio!</span");
            $("#telefono").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorTelefono").remove();
            $("#telefono").css("border-color", "#00a65a");
        }

        if($("#correo").val() === '') {
            $("#errorCorreo").remove();
            $("#correo").after("<span style='color: #dd4b39;' id='errorCorreo'>El Correo Es Obligatorio!</span");
            $("#correo").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorCorreo").remove();
            $("#correo").css("border-color", "#00a65a");
        }

        if($("#clave").val() === '') {
            $("#errorClave").remove();
            $("#clave").after("<span style='color: #dd4b39;' id='errorClave'>La Clave Es Obligatorio!</span");
            $("#clave").css("border-color", "#dd4b39");
            event.preventDefault();
        } else {
            $("#errorClave").remove();
            $("#clave").css("border-color", "#00a65a");
        }

        if ($("#perfil").val() != 3) {

            if($("#fechaNacimiento").val() === '') {
                $("#errorFechaNacimiento").remove();
                $("#fechaNacimiento").after("<span style='color: #dd4b39;' id='errorFechaNacimiento'>La Fecha De Nacimiento Es Obligatorio!</span");
                $("#fechaNacimiento").css("border-color", "#dd4b39");
                event.preventDefault();
            } else {
                $("#errorFechaNacimiento").remove();
                $("#fechaNacimiento").css("border-color", "#00a65a");
            }      

            if($("#direccionDomicilio").val() === '') {
                $("#errorDireccionDomicilio").remove();
                $("#direccionDomicilio").after("<span style='color: #dd4b39;' id='errorDireccionDomicilio'>La Direccion De Domicilio Es Obligatorio!</span");
                $("#direccionDomicilio").css("border-color", "#dd4b39");
                event.preventDefault();
            } else {
                $("#errorFechaNacimiento").remove();
                $("#direccionDomicilio").css("border-color", "#00a65a");
            }    
        }
    });

    $("#fechaNacimiento").blur(function(){
        if ($("#perfil").val() != 3) {
            if($("#fechaNacimiento").val() === '') {
                $("#errorFechaNacimiento").remove();
                $("#fechaNacimiento").after("<span style='color: #dd4b39;' id='errorFechaNacimiento'>La Fecha De Nacimiento Es Obligatorio!</span");
                $("#fechaNacimiento").css("border-color", "#dd4b39");
            } else {
                $("#errorFechaNacimiento").remove();
                $("#fechaNacimiento").css("border-color", "#00a65a");
            }    
        }
    });

    $("#direccionDomicilio").blur(function(){
        if ($("#perfil").val() != 3) {
            if($("#direccionDomicilio").val() === '') {
                $("#errorDireccionDomicilio").remove();
                $("#direccionDomicilio").after("<span style='color: #dd4b39;' id='errorDireccionDomicilio'>La Direccion De Domicilio Es Obligatorio!</span");
                $("#direccionDomicilio").css("border-color", "#dd4b39");
            } else {
                $("#errorDireccionDomicilio").remove();
                $("#direccionDomicilio").css("border-color", "#00a65a");
            }    
        }
    });
});
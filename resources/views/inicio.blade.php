@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Inicio</a></li>
    </ol>
    <h1 class="page-header">Inicio <small></h1>

        <div class="panel panel-inverse">
            <div class="panel-heading">
                <h4 class="panel-title">Bienvenido <b>{{ auth()->user()->name }} !!</b></h4>
            </div>
            <div class="panel-body">
                @if(auth()->user()->id_perfil == 3)
                    <p>
                        Aqui podras realizar el sueño propio de tu gira de estudio,
                        podras agregar la institucion en la cual estas actualmente o en la que quieras ayudar, y podras realizar el viaje
                        que siempre quisiste!!.
                    </p>
                @elseif(auth()->user()->id_perfil == 2)
                    <p>
                        Aqui podras asignater los viajes de los clientes, asi podremos ayudar de mejor manera a nuestros clientes con informacion,
                        y con tu ayuda, exito!!.
                    </p>
                @elseif(auth()->user()->id_perfil == 1)                    
                    <p>
                        Aqui podras administrar el sitio completamente, desde lo mas basico como registrar una institucion, hasta lo mas dificil, eliminar un usuario.
                    </p>
                @endif
            </div>
		</div>
</div>
@stop
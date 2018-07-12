@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Informacion Del Usuario</a></li>
    </ol>
    <h1 class="page-header">Visualiza Aqui La Informacion Del Usuario<small></h1>
    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs">
                <li class="nav-items">
                    <a href="#visualizarInstitucion" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Visualizar</span>
                        <span class="d-sm-block d-none">Visualizar</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade active show" id="visualizarInstitucion">
                    <h3 class="m-t-10"><i class="fa fa-info"></i> Visualizar Usuario</h3>

                    <div class="panel panel-inverse">
                        <div class="panel-heading">
                            <h4 class="panel-title"> Informacion de {{ $usuario->name }}</b></h4>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Nombre Completo : </label>
                                        <p>{{ $usuario->name }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Correo : </label>
                                        <p>{{ strtoupper($usuario->email) }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Perfil : </label>
                                        <p>{{ $usuario->nombre_perfil }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Rut : </label>
                                        <p>{{ $usuario->rut_datos_usuario }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Genero : </label>
                                        <p>{{ $usuario->nombre_genero }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Telefono : </label>
                                        <p>{{ $usuario->telefono_datos_usuario }}</p>
                                    </div>
                                </div>
                            </div>
                            @if($usuario->id_perfil == 2)
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Direccion : </label>
                                            <p>{{ $usuario->direccion_domicilio_datos_usuario }}</p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Fecha Nacimiento : </label>
                                            <p>{{ $usuario->fecha_nacimiento_datos_usuario }}</p>
                                        </div>
                                    </div>
                                </div>
                            @endif
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <a href="{{ route('Usuarios.index') }}">Volver</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>        
</div>
@stop
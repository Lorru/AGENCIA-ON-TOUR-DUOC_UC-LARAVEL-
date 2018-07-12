@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Registrar Usuario</a></li>
    </ol>
    <h1 class="page-header">Registra Aqui A Los Usuarios<small></h1>
    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs">
                <li class="nav-items">
                    <a href="#registrarInstitucion" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Registrar</span>
                        <span class="d-sm-block d-none">Registrar</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade active show" id="registrarInstitucion">
                    <h3 class="m-t-10"><i class="fa fa-plus"></i> Registrar Usuarios</h3>
                    @if(session()->has('crearUsuario'))
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-success">
                                    {{ session('crearUsuario') }}
                                </div>
                            </div>
                        </div>
                    @endif
                    @if(session()->has('errorCrearUsuario'))
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-danger">
                                    {{ session('errorCrearUsuario') }}
                                </div>
                            </div>
                        </div>
                    @endif
                    <form action="{{ route('Usuarios.store') }}" method="post" id="formRegistrarUsuarios">
                        {{ csrf_field() }}
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Perfil <span class="text-danger">*</span></label>
                                    <select name="perfil" id="perfil" class="form-control">
                                        @foreach($perfil as $per)
                                            <option value="{{ $per->id_perfil }}">{{ $per->nombre_perfil }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Primer Nombre <span class="text-danger">*</span></label>
                                    <input type="text" name="primerNombre" id="primerNombre" class="form-control" placeholder="Primer Nombre...">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Segundo Nombre <span class="text-danger">*</span></label>
                                    <input type="text" name="segundoNombre" id="segundoNombre" class="form-control" placeholder="Segundo Nombre...">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Primer Apellido <span class="text-danger">*</span></label>
                                    <input type="text" name="primerApellido" id="primerApellido" class="form-control" placeholder="Primer Apellido...">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Segundo Apellido <span class="text-danger">*</span></label>
                                    <input type="text" name="segundoApellido" id="segundoApellido" class="form-control" placeholder="Segundo Apellido...">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Rut <span class="text-danger">*</span></label>
                                    <input type="text" name="rut" id="rut" class="form-control" placeholder="Rut...">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Correo <span class="text-danger">*</span></label>
                                    <input type="email" name="correo" id="correo" class="form-control" placeholder="Correo...">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Clave <span class="text-danger">*</span></label>
                                    <input type="password" name="clave" id="clave" class="form-control" placeholder="Clave...">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Genero <span class="text-danger">*</span></label>
                                    <select name="genero" id="genero" class="form-control">
                                        @foreach($genero as $ger)
                                            <option value="{{ $ger->id_genero }}">{{ $ger->nombre_genero }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Telefono <span class="text-danger">*</span></label>
                                    <input type="number" name="telefono" id="telefono" class="form-control" placeholder="Telefono...">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Fecha de Nacimiento <span class="text-danger">*</span></label>
                                    <input type="date" name="fechaNacimiento" id="fechaNacimiento" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Direccion Domicilio <span class="text-danger">*</span></label>
                                    <input type="text" name="direccionDomicilio" id="direccionDomicilio" class="form-control" placeholder="Direccion Domicilio...">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <input type="submit" value="Registrar Usuario" class="btn btn-primary">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <a href="{{ route('Usuarios.index') }}" class="btn btn-link">Volver</a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>        
</div>
@stop
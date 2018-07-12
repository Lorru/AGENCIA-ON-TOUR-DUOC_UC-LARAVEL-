@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Usuarios</a></li>
    </ol>
    <h1 class="page-header">Usuarios <small></h1>
    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs">
                <li class="nav-items">
                    <a href="#Instituciones" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Usuarios</span>
                        <span class="d-sm-block d-none">Usuarios</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade active show" id="instituciones">
                    <h3 class="m-t-10"><i class="fa fa-list-ul"></i> Usuarios</h3>
                    @if(session()->has('eliminarUsuario'))
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-success">
                                    {{ session('eliminarUsuario') }}
                                </div>
                            </div>
                        </div>
                    @endif
                    @if(session()->has('errorEliminarUsuario'))
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-danger">
                                    {{ session('errorEliminarUsuario') }}
                                </div>
                            </div>
                        </div>
                    @endif
                    @if($usuarios->count() > 0)
                        <div class="row">
                            <div class="col-md-12">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Nombre</th>
                                            <th>Correo</th>
                                            <th>Perfil</th>
                                            <th colspan="2">Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($usuarios as $user)
                                            <tr>
                                                <td><a href="{{ route('Usuarios.show', $user->id) }}" class="btn btn-link btn-xs">{{ $user->name }}</a></td>
                                                <td>{{ strtoupper($user->email) }}</td>
                                                <td>{{ $user->nombre_perfil }}</td>
                                                <td>
                                                    <a href="{{ route('Usuarios.edit', $user->id) }}" class="btn btn-info btn-xs">Editar Usuario</a>
                                                </td>
                                                <td>
                                                    <form action="{{ route('Usuarios.destroy', $user->id) }}" style="display: inline" method="post">
                                                        {!! csrf_field() !!}
                                                        {!! method_field('DELETE') !!}
                                                        <input type="submit" class="btn btn-danger btn-xs" value="Eliminar Usuario">
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                        {!! $usuarios->render() !!}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    @else
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-warning">
                                    <p>No Hay Usuarios Registrados, Registra Los Usuarios <a href="{{ route('Usuarios.create') }}">aqui</a></p>
                                </div>
                            </div>
                        </div>
                    @endif 
                </div>
            </div>
        </div>
    </div>                
</div>
@stop
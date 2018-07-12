@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Instituciones</a></li>
    </ol>
    <h1 class="page-header">Tus Instituciones <small></h1>
    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs">
                <li class="nav-items">
                    <a href="#Instituciones" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Institucion</span>
                        <span class="d-sm-block d-none">Institucion</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade active show" id="instituciones">
                    <h3 class="m-t-10"><i class="fa fa-list-ul"></i> Tus Instituciones</h3>
                    @if(session()->has('eliminarCliente'))
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-success">
                                    {{ session('eliminarCliente') }}
                                </div>
                            </div>
                        </div>
                    @endif
                    @if(session()->has('errorEliminarCliente'))
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-danger">
                                    {{ session('errorEliminarCliente') }}
                                </div>
                            </div>
                        </div>
                    @endif
                    @if($clientes->count() > 0)
                        <div class="row">
                            <div class="col-md-12">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Nombre de Institucion</th>
                                            <th>Tipo de Institucion</th>
                                            <th>Direccion Institucion</th>
                                            <th>Asociado Con</th>
                                            <th colspan="2">Acciones</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($clientes as $client)
                                            <tr>
                                                <td><a href="{{ route('Instituciones.show', $client->id_cliente) }}" class="btn btn-link btn-xs">{{ $client->nombre_cliente }}</a></td>
                                                <td>{{ $client->nombre_tipo_cliente }}</td>
                                                <td>{{ $client->direccion_cliente }}</td>
                                                <td>{{ $client->primer_nombre_datos_usuario . ' ' . $client->segundo_nombre_datos_usuario . ' ' . $client->primer_apellido_datos_usuario . ' ' . $client->segundo_apellido_datos_usuario }}</td>
                                                <td>
                                                    <a href="{{ route('Instituciones.edit', $client->id_cliente) }}" class="btn btn-info btn-xs">Editar Institucion</a>
                                                </td>
                                                <td>
                                                    <form action="{{ route('Instituciones.destroy', $client->id_cliente) }}" style="display: inline" method="post">
                                                        {!! csrf_field() !!}
                                                        {!! method_field('DELETE') !!}
                                                        <input type="submit" class="btn btn-danger btn-xs" value="Eliminar Institucion">
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                        {!! $clientes->render() !!}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    @else
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-warning">
                                    <p>No Tienes Instituciones Asignadas, Registra tus Instituciones <a href="{{ route('Instituciones.create') }}">aqui</a></p>
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
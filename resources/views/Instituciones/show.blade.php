@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Informacion De La Institucion</a></li>
    </ol>
    <h1 class="page-header">Visualiza Aqui La Informacion De La Institucion<small></h1>
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
                    <h3 class="m-t-10"><i class="fa fa-info"></i> Visualizar Institucion</h3>

                    <div class="panel panel-inverse">
                        <div class="panel-heading">
                            <h4 class="panel-title"> Informacion de {{ $cliente->nombre_cliente }}</b></h4>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Nombre Institucion : </label>
                                        <p>{{ $cliente->nombre_cliente }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Tipo de Institucion : </label>
                                        <p>{{ $cliente->nombre_tipo_cliente }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Direccion Cliente : </label>
                                        <p>{{ $cliente->direccion_cliente }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <a href="{{ route('Instituciones.index') }}">Volver</a>
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
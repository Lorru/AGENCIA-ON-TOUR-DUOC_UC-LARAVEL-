@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Informacion Del Viaje</a></li>
    </ol>
    <h1 class="page-header">Visualiza Aqui La Informacion Del Viaje<small></h1>
    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs">
                <li class="nav-items">
                    <a href="#visualizarViaje" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Visualizar</span>
                        <span class="d-sm-block d-none">Visualizar</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade active show" id="visualizarViaje">
                    <h3 class="m-t-10"><i class="fa fa-info"></i> Visualizar Viaje</h3>

                    <div class="panel panel-inverse">
                        <div class="panel-heading">
                            <h4 class="panel-title"> Informacion del Viaje A {{ $oferta->nombre_hospedaje . ' - REGION DE ' . $oferta->nombre_region }}</b></h4>
                        </div>
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Progreso</label>
                                        <div class="progress rounded-corner progress-striped active">
                                            <div class="progress-bar bg-purple" style="width: {{ $progreso }}%">
                                                {{ $progreso . '%' }}
                                            </div>
                                        </div>
                                        @php
                                            $faltante = 100 - $progreso;
                                        @endphp
                                        @if($progreso < 100)
                                            <p>{{ 'Tienes '. $progreso . '% de Progreso, Te Falta Un Total De : ' . $faltante . '% Para Cumplir Tu Viaje'}}</p>
                                        @else
                                            <p>Felicidades...!! Has Completado El Pago De Tu Viaje, Exito Y Buen Viaje!!</p>
                                        @endif                                            
                                    </div>
                                </div>
                                @if($progreso < 100)
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <br>
                                            <a href="{{ route('Viajes.edit', $oferta->id_oferta) }}" class="btn btn-link btn-xs">Pagar</a>
                                        </div>
                                    </div>
                                @endif
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Nombre Hospedaje : </label>
                                        <p>{{ $oferta->nombre_hospedaje }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Tipo de Hospedaje : </label>
                                        <p>{{ $oferta->nombre_tipo_hospedaje }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Region del Hospedaje : </label>
                                        <p>{{ $oferta->nombre_region }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Provincia del Hospedaje : </label>
                                        <p>{{ $oferta->nombre_provincia }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Comuna del Hospedaje : </label>
                                        <p>{{ $oferta->nombre_comuna }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Cantidad de Piezas : </label>
                                        <p>{{ $oferta->cantidad_piezas_tipo_hospedaje }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Cantidad de Personas : </label>
                                        <p>{{ $oferta->cantidad_personas_tipo_hospedaje }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Agente Responsable : </label>
                                        <p>{{ $oferta->primer_nombre_datos_usuario . ' ' . $oferta->segundo_nombre_datos_usuario . ' ' . $oferta->primer_apellido_datos_usuario . ' ' . $oferta->segundo_apellido_datos_usuario }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Institucion : </label>
                                        <p>{{ $oferta->nombre_cliente }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Transporte : </label>
                                        <p>{{ $oferta->nombre_transporte }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Monto Total : </label>
                                        <p>{{ '$ '. $oferta->monto_total_oferta }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Monto Incremental : </label>
                                        <p>{{ '$ '. $oferta->monto_incremental }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Fecha Inicio Viaje : </label>
                                        <p>{{ $oferta->fecha_inicio }}</p>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Fecha Final Viaje : </label>
                                        <p>{{ $oferta->fecha_final }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label>Cantidad de Dias : </label>
                                        <p>{{ $oferta->cantidad_dias_oferta }}</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <a href="{{ route('Viajes.index') }}">Volver</a>
                                        @if($progreso == 100)
                                            <a href="{{ route('DescargarComprobante', $oferta->id_oferta) }}" class="btn btn-danger btn-xs">Descargar Comprobante</a>
                                        @endif
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
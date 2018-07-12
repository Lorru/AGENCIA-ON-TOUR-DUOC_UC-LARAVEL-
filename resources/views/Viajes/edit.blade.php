@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Pagar Viaje</a></li>
    </ol>
    <h1 class="page-header">Paga Aqui Tu Viaje<small></h1>
    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs">
                <li class="nav-items">
                    <a href="#editarInstitucion" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Pagar</span>
                        <span class="d-sm-block d-none">Pagar</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade active show" id="editarInstitucion">
                    <h3 class="m-t-10"><i class="fa fa-edit"></i> Pagar Viaje</h3>
                    @if(session()->has('pagarViaje'))
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-success">
                                    {{ session('pagarViaje') }}
                                </div>
                            </div>
                        </div>
                    @endif
                    @if(session()->has('errorPagarViaje'))
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-danger">
                                    {{ session('errorPagarViaje') }}
                                </div>
                            </div>
                        </div>
                    @endif
                    <form action="{{ route('Viajes.update', $oferta->id_oferta) }}" method="post" id="formPagarViaje">
                        {{ csrf_field() }}
                        {!! method_field('PUT') !!}
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
                        </div>
                        @if($oferta->monto_total_oferta > $oferta->monto_incremental)
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Pagar : </label>
                                        <input type="number" name="montoIncremental" id="montoIncremental" placeholder="{{ 'Monto Faltante $ ' . ($oferta->monto_total_oferta - $oferta->monto_incremental) }}" class="form-control">
                                    </div>
                                </div>
                                <div class="col-md-3" style="margin-top: 7px;">
                                    <div class="form-group">
                                        <br>
                                        <input type="submit" value="Pagar Viaje" class="btn btn-success">
                                    </div>
                                </div>
                            </div>
                        @elseif($oferta->monto_total_oferta == $oferta->monto_incremental)
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <a href="{{ route('DescargarComprobante', $oferta->id_oferta) }}" class="btn btn-danger btn-xs">Descargar Comprobante</a>
                                    </div>
                                </div>
                            </div>
                        @endif                            
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
                                    <label>Cantidad de Piezas : </label>
                                    <p>{{ $oferta->cantidad_piezas_tipo_hospedaje }}</p>
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
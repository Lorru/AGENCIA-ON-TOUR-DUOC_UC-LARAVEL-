@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Registrar Viaje</a></li>
    </ol>
    <h1 class="page-header">Registra Aqui Tus Viajes<small></h1>
    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs">
                <li class="nav-items">
                    <a href="#registrarViaje" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Registrar</span>
                        <span class="d-sm-block d-none">Registrar</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade active show" id="registrarViaje">
                    <h3 class="m-t-10"><i class="fa fa-plus"></i> Registrar Viaje</h3>
                    @if(session()->has('registrarViaje'))
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-success">
                                    {{ session('registrarViaje') }}
                                </div>
                            </div>
                        </div>
                    @endif
                    @if($cliente->count() > 0)
                        <form action="{{ route('Viajes.store') }}" method="post" id="formRegistrarViaje">
                            {{ csrf_field() }}
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Institucion <span class="text-danger">*</span></label>
                                        <select name="institucion" id="institucion" class="form-control">
                                            @foreach($cliente as $cli)
                                                <option value="{{ $cli->id_cliente }}">{{ $cli->nombre_cliente }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Region <span class="text-danger">*</span></label>
                                        <select name="region" id="region" class="form-control">
                                            @foreach($region as $reg)
                                                <option value="{{ $reg->id_region }}">{{ $reg->nombre_region }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Provincia <span class="text-danger">*</span></label>
                                        <select name="provincia" id="provincia" class="form-control">
                                            @foreach($provincia as $pro)
                                                <option value="{{ $pro->id_provincia }}">{{ $pro->nombre_provincia }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Comuna <span class="text-danger">*</span></label>
                                        <select name="comuna" id="comuna" class="form-control">
                                            @foreach($comuna as $com)
                                                <option value="{{ $com->id_comuna }}">{{ $com->nombre_comuna }}</option>
                                            @endforeach
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Hospedaje <span class="text-danger">*</span></label>
                                        <select name="hospedaje" id="hospedaje" class="form-control">
                                            @foreach($hospedaje as $hos)
                                                <option value="{{ $hos->id_hospedaje }}">{{ $hos->nombre_hospedaje }}</option>
                                            @endforeach
                                        </select>
                                        <a href="#modalHospedaje" id="infoHospedaje" data-toggle="modal" class="btn btn-link btn-xs">Ver Informacion de Hospedaje</a>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Fecha Inicio Viaje <span class="text-danger">*</span></label>
                                        @php  
                                            $fecha = Carbon\Carbon::now();
                                        @endphp
                                        <input type="date" min="{{ $fecha->toDateString() }}" name="fechaInicio" id="fechaInicio" class="form-control">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Fecha Final Viaje <span class="text-danger">*</span></label>
                                        <input type="date" name="fechaFinal" id="fechaFinal" class="form-control" disabled>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label class="control-label">Transporte <span class="text-danger">*</span></label>
                                        <select name="transporte" id="transporte" class="form-control">
                                            @foreach($transporte as $trans)
                                                <option value="{{ $trans->id_transporte }}">{{ $trans->nombre_transporte }}</option>
                                            @endforeach
                                        </select>
                                        <a href="#modalTransporte" id="infoTransporte" data-toggle="modal" class="btn btn-link btn-xs">Ver Informacion de Transporte</a>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <p id="montoTotal">Monto Total : $ </p>
                                        <p id="cantDias">Cantidad de Dias : </p>
                                        <input type="submit" value="Registrar Viaje" class="btn btn-primary">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <a href="{{ route('Viajes.index') }}" class="btn btn-link">Volver</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    @else
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-warning">
                                    <p>No Tienes Instituciones Asignadas, Por Ende No Puedes Registrar Viajes, Registra tus Instituciones <a href="{{ route('Instituciones.create') }}">aqui</a></p>
                                </div>
                            </div>
                        </div>
                    @endif
                </div>

                <div class="modal fade" id="modalHospedaje">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="tituloHospedaje">INFORMACION DEL HOSPEDAJE - </h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Region : </label>
                                            <p id="nombreRegion"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Provincia : </label>
                                            <p id="nombreProvincia"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Comuna : </label>
                                            <p id="nombreComuna"></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Nombre Hospedaje : </label>
                                            <p id="nombreHospedaje"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Cantidad de Piezas : </label>
                                            <p id="cantPiezas"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Cantidad de Personas : </label>
                                            <p id="cantPersonas"></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-5">
                                        <div class="form-group">
                                            <label>Monto Base Hospedaje (Por Dia) : </label>
                                            <p id="montoBase">$ </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a href="javascript:;" class="btn btn-white" data-dismiss="modal">Cerrar</a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="modal fade" id="modalTransporte">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="tituloTransporte">INFORMACION DEL TRANSPORTE - </h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                            </div>
                            <div class="modal-body">
                                <div class="row">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Tipo Transporte : </label>
                                            <p id="nombreTipoTransporte"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>Monto Base (Por Persona) : </label>
                                            <p id="montoBaseTransporte">$ </p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <a href="javascript:;" class="btn btn-white" data-dismiss="modal">Cerrar</a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>        
</div>
@stop
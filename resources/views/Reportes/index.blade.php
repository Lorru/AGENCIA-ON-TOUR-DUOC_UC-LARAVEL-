@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Reportes</a></li>
    </ol>
    <h1 class="page-header">Reportes <small></h1>
    
    <div class="row">
        <div class="col-lg-6 col-md-6">
            <div class="widget widget-stats bg-red">
                <div class="stats-icon"><i class="fa fa-plane"></i></div>
                <div class="stats-info">
                    <h4>TOTAL VIAJES</h4>
                    <p>{{ $infoOferta->count() }}</p>	
                </div>
            </div>
        </div>
        <div class="col-lg-6 col-md-6">
            <div class="widget widget-stats bg-green">
                <div class="stats-icon"><i class="fa fa-dollar-sign"></i></div>
                <div class="stats-info">
                    <h4>MONTO TOTAL</h4>
                    <p>{{ '$ '. $infoOferta->sum('monto_total_oferta') }}</p>	
                </div>
            </div>
        </div>
    </div>   
    <div class="row">
        <div class="col-md-4">
            <a href="#modalDetalles" class="btn btn-link" data-toggle="modal">Ver Detalles Generales</a>
        </div>
    </div>   
    
    <div class="modal modal-message fade" id="modalDetalles">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="tituloTransporte">INFORMACION GENERAL DE LOS VIAJES</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                </div>
                <div class="modal-body">
                    @if($oferta->count() > 0)
                        <div class="row">
                            <div class="col-md-12">
                                <table class="table table-hover">
                                    <thead>
                                        <tr>
                                            <th>Institucion</th>
                                            <th>Agente Responsable</th>
                                            <th>Region</th>
                                            <th>Provincia</th>
                                            <th>Comuna</th>
                                            <th>Monto Total Viaje</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach($oferta as $ofer)
                                            <tr>
                                                <td>{{ $ofer->nombre_cliente }}</td>
                                                <td>{{ $ofer->primer_nombre_datos_usuario }}</td>
                                                <td>{{ $ofer->nombre_region }}</td>
                                                <td>{{ $ofer->nombre_provincia }}</td>
                                                <td>{{ $ofer->nombre_comuna }}</td>
                                                <td>{{ $ofer->monto_total_oferta }}</td>
                                            </tr>
                                        @endforeach
                                        {!! $oferta->render() !!}
                                    </tbody>
                                </table>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <a href="{{ route('DescargarReporte') }}" class="btn btn-danger btn-xs">Descargar Reporte</a>
                            </div>
                        </div>
                    @else
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-warning">
                                    <p>No Hay Viajes Registrados</p>
                                </div>
                            </div>
                        </div>
                    @endif                        
                </div>
                <div class="modal-footer">
                    <a href="javascript:;" class="btn btn-white" data-dismiss="modal">Cerrar</a>
                </div>
            </div>
        </div>
    </div>
</div>
@stop
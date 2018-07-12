@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Asignar Viaje De Cliente</a></li>
    </ol>
    <h1 class="page-header">Asignar Viaje De Cliente <small></h1>
    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs">
                <li class="nav-items">
                    <a href="#viajes" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Asignar</span>
                        <span class="d-sm-block d-none">Asignar</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade active show" id="viajes">
                    <h3 class="m-t-10"><i class="fa fa-list-ul"></i> Viajes de Clientes No Asignadas</h3>
                    @if(session()->has('asignarCliente'))
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-success">
                                    {{ session('asignarCliente') }}
                                </div>
                            </div>
                        </div>
                    @endif
                    @if($ofertas->count() > 0)
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-hover">
                                        <thead>
                                            <tr>
                                                <th>Nombre de Hospedaje</th>
                                                <th>Transporte</th>
                                                <th>Institucion</th>
                                                <th>Monto Total</th>
                                                <th>Monto Incremental</th>
                                                <th>Fecha Inicio Viaje</th>
                                                <th>Fecha Final Viaje</th>
                                                <th>Cantidad Dias</th>
                                                <th colspan="2">Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($ofertas as $oferta)
                                                <tr>
                                                    <td><a href="{{ route('Clientes.show', $oferta->id_oferta) }}" class="btn btn-link btn-xs">{{ $oferta->nombre_hospedaje }}</a></td>
                                                    <td>{{ $oferta->nombre_transporte }}</td>
                                                    <td>{{ $oferta->nombre_cliente }}</td>
                                                    <td>{{ '$ '. $oferta->monto_total_oferta }}</td>
                                                    <td>{{ '$ '. $oferta->monto_incremental }}</td>
                                                    <td>{{ $oferta->fecha_inicio }}</td>
                                                    <td>{{ $oferta->fecha_final }}</td>
                                                    <td>{{ $oferta->cantidad_dias_oferta }}</td>
                                                    <td>
                                                        <a href="{{ route('DescargarComprobanteCliente', $oferta->id_oferta) }}" class="btn btn-danger btn-xs">Descargar Comprobante</a>
                                                    </td>
                                                    <td>
                                                        <form action="{{ route('Clientes.update', $oferta->id_oferta) }}" style="display: inline" method="post">
                                                            {!! csrf_field() !!}
                                                            {!! method_field('PUT') !!}
                                                            <input type="submit" class="btn btn-success btn-xs" value="Asignar Viaje">
                                                        </form>
                                                    </td>
                                                </tr>
                                            @endforeach
                                            {!! $ofertas->render() !!}
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    @else
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-warning">
                                    <p>No Hay Mas Viajes Por Asignar</p>
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
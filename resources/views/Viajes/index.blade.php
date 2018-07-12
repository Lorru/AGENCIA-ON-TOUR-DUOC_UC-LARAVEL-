@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Tus Viajes</a></li>
    </ol>
    <h1 class="page-header">Tus Viajes <small></h1>
    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs">
                <li class="nav-items">
                    <a href="#viajes" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Viajes</span>
                        <span class="d-sm-block d-none">Viajes</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade active show" id="viajes">
                    <h3 class="m-t-10"><i class="fa fa-list-ul"></i> Tus Viajes</h3>
                    @if(session()->has('eliminarOferta'))
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-success">
                                    {{ session('eliminarOferta') }}
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
                                                <th>Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            @foreach($ofertas as $oferta)
                                                <tr>
                                                    <td><a href="{{ route('Viajes.show', $oferta->id_oferta) }}" class="btn btn-link btn-xs">{{ $oferta->nombre_hospedaje }}</a></td>
                                                    <td>{{ $oferta->nombre_transporte }}</td>
                                                    <td>{{ $oferta->nombre_cliente }}</td>
                                                    <td>{{ '$ '. $oferta->monto_total_oferta }}</td>
                                                    <td>{{ '$ '. $oferta->monto_incremental }}</td>
                                                    <td>{{ $oferta->fecha_inicio }}</td>
                                                    <td>{{ $oferta->fecha_final }}</td>
                                                    <td>{{ $oferta->cantidad_dias_oferta }}</td>
                                                    @if($oferta->monto_incremental == $oferta->monto_total_oferta)
                                                        <td>
                                                            <a href="{{ route('DescargarComprobante', $oferta->id_oferta) }}" class="btn btn-danger btn-xs">Descargar Comprobante</a>
                                                        </td>
                                                    @endif
                                                    @php  
                                                        $fecha = Carbon\Carbon::now();
                                                    @endphp
                                                    @if($fecha->toDateString() < $oferta->fecha_inicio)
                                                        @if($oferta->monto_incremental < $oferta->monto_total_oferta)
                                                            <td>
                                                                <a href="{{ route('Viajes.edit', $oferta->id_oferta) }}" class="btn btn-success btn-xs">Pagar Viaje</a>
                                                            </td>
                                                        @endif
                                                        @if($oferta->monto_incremental < $oferta->monto_total_oferta)
                                                            <td>
                                                                <form action="{{ route('Viajes.destroy', $oferta->id_oferta) }}" style="display: inline" method="post">
                                                                    {!! csrf_field() !!}
                                                                    {!! method_field('DELETE') !!}
                                                                    <input type="submit" class="btn btn-danger btn-xs" value="Eliminar Viaje">
                                                                </form>
                                                            </td>
                                                        @endif
                                                    @endif
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
                                    <p>No Tienes Viajes Asignados, Registra tus Viajes <a href="{{ route('Viajes.create') }}">aqui</a></p>
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
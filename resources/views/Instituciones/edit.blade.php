@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Editar Institucione</a></li>
    </ol>
    <h1 class="page-header">Edita Aqui La Institucion<small></h1>
    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs">
                <li class="nav-items">
                    <a href="#editarInstitucion" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Editar</span>
                        <span class="d-sm-block d-none">Editar</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade active show" id="editarInstitucion">
                    <h3 class="m-t-10"><i class="fa fa-edit"></i> Editar Institucion</h3>
                    @if(session()->has('editarCliente'))
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-success">
                                    {{ session('editarCliente') }}
                                </div>
                            </div>
                        </div>
                    @endif
                    <form action="{{ route('Instituciones.update', $cliente->id_cliente) }}" method="post" id="formActualizarInstitucion">
                        {{ csrf_field() }}
                        {!! method_field('PUT') !!}
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Tipo de Institucion <span class="text-danger">*</span></label>
                                    <select name="institucion" id="institucion" class="form-control">
                                        @foreach($tipoCliente as $tipCliente)
                                            <option value="{{ $tipCliente->id_tipo_cliente }}" {{$tipCliente->id_tipo_cliente == $cliente->id_tipo_cliente ? 'selected' : ''}}>{{ $tipCliente->nombre_tipo_cliente }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Nombre de Institucion <span class="text-danger">*</span></label>
                                    <input type="text" name="nombreInstitucion" id="nombreInstitucion" class="form-control" placeholder="Nombre de Institucion..." value="{{ $cliente->nombre_cliente }}">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Direccion de la Institucion <span class="text-danger">*</span></label>
                                    <input type="text" name="direccionInstitucion" id="direccionInstitucion" class="form-control" placeholder="Direccion de la Institucion..." value="{{ $cliente->direccion_cliente }}">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <input type="submit" value="Actualizar Institucion" class="btn btn-primary">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <a href="{{ route('Instituciones.index') }}" class="btn btn-link">Volver</a>
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
@extends('layout')
@section('contenido')
<div id="content" class="content">
    <ol class="breadcrumb pull-right">
        <li class="breadcrumb-item"><a href="javascript:;">On Tour</a></li>
        <li class="breadcrumb-item"><a href="javascript:;">Registrar Instituciones</a></li>
    </ol>
    <h1 class="page-header">Registra Aqui Tus Instituciones<small></h1>
    <div class="row">
        <div class="col-md-12">
            <ul class="nav nav-tabs">
                <li class="nav-items">
                    <a href="#registrarInstitucion" data-toggle="tab" class="nav-link active">
                        <span class="d-sm-none">Registrar</span>
                        <span class="d-sm-block d-none">Registrar</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade active show" id="registrarInstitucion">
                    <h3 class="m-t-10"><i class="fa fa-plus"></i> Registrar Institucion</h3>
                    @if(session()->has('registroCliente'))
                        <div class="row">
                            <div class="col-md-12">
                                <div class="alert alert-success">
                                    {{ session('registroCliente') }}
                                </div>
                            </div>
                        </div>
                    @endif
                    <form action="{{ route('Instituciones.store') }}" method="post" id="formCrearInstitucion">
                        {{ csrf_field() }}
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Tipo de Institucion <span class="text-danger">*</span></label>
                                    <select name="institucion" id="institucion" class="form-control">
                                        @foreach($tipoCliente as $tipCliente)
                                            <option value="{{ $tipCliente->id_tipo_cliente }}">{{ $tipCliente->nombre_tipo_cliente }}</option>
                                        @endforeach
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Nombre de Institucion <span class="text-danger">*</span></label>
                                    <input type="text" name="nombreInstitucion" id="nombreInstitucion" class="form-control" placeholder="Nombre de Institucion...">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label class="control-label">Direccion de la Institucion <span class="text-danger">*</span></label>
                                    <input type="text" name="direccionInstitucion" id="direccionInstitucion" class="form-control" placeholder="Direccion de la Institucion...">
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <input type="submit" value="Registrar Institucion" class="btn btn-primary">
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
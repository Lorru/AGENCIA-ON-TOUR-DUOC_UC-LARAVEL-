<div class="panel panel-inverse">
    <div class="panel-heading">
        <h4 class="panel-title"> COMPROBANTE DE VIAJE A  {{ $oferta->nombre_hospedaje . ' - REGION DE ' . $oferta->nombre_region }}</b></h4>
    </div>
    <div class="panel-body">
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
            <div class="col-md-4">
                <div class="form-group">
                    <label>Fecha de Comprobante : </label>
                    <p>{{ $oferta->fecha_comprobante_oferta }}</p>
                </div>
            </div>
        </div>
    </div>
</div>

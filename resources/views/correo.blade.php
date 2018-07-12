<div class="panel panel-inverse">
        <div class="panel-body">
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Nombre Hospedaje : </label>
                        <p>{{ $viaje->nombre_hospedaje }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Tipo de Hospedaje : </label>
                        <p>{{ $viaje->nombre_tipo_hospedaje }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Region del Hospedaje : </label>
                        <p>{{ $viaje->nombre_region }}</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Provincia del Hospedaje : </label>
                        <p>{{ $viaje->nombre_provincia }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Comuna del Hospedaje : </label>
                        <p>{{ $viaje->nombre_comuna }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Cantidad de Piezas : </label>
                        <p>{{ $viaje->cantidad_piezas_tipo_hospedaje }}</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Cantidad de Personas : </label>
                        <p>{{ $viaje->cantidad_personas_tipo_hospedaje }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Agente Responsable : </label>
                        <p>{{ $viaje->primer_nombre_datos_usuario . ' ' . $viaje->segundo_nombre_datos_usuario . ' ' . $viaje->primer_apellido_datos_usuario . ' ' . $viaje->segundo_apellido_datos_usuario }}</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Institucion : </label>
                        <p>{{ $viaje->nombre_cliente }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Transporte : </label>
                        <p>{{ $viaje->nombre_transporte }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Monto Total : </label>
                        <p>{{ '$ '. $viaje->monto_total_oferta }}</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Fecha Inicio Viaje : </label>
                        <p>{{ $viaje->fecha_inicio }}</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Fecha Final Viaje : </label>
                        <p>{{ $viaje->fecha_final }}</p>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <div class="form-group">
                        <label>Cantidad de Dias : </label>
                        <p>{{ $viaje->cantidad_dias_oferta }}</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
<table >
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
                <td>{{ $ofer->primer_nombre_datos_usuario . ' ' . $ofer->segundo_nombre_datos_usuario . ' ' . $ofer->primer_apellido_datos_usuario . ' ' . $ofer->segundo_apellido_datos_usuario }}</td>
                <td>{{ $ofer->nombre_region }}</td>
                <td>{{ $ofer->nombre_provincia }}</td>
                <td>{{ $ofer->nombre_comuna }}</td>
                <td>{{ $ofer->monto_total_oferta }}</td>
            </tr>
        @endforeach
    </tbody>
</table>
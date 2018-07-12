<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Provincia;
use App\Comuna;
use App\Hospedaje;
use App\Transporte;
use Carbon\Carbon;

class JsonController extends Controller
{
    public function getProvince(Request $request)
    {
        $idRegion = $request->input('idRegion');

        $provincia = Provincia::where('id_region', '=', $idRegion)->get();

        return response()->json($provincia);
    }

    public function getCommune(Request $request)
    {
        $idProvincia = $request->input('idProvincia');

        $comuna = Comuna::where('id_provincia', '=', $idProvincia)->get();

        return response()->json($comuna);
    }

    public function getLodging(Request $request)
    {
        $idComuna = $request->input('idComuna');

        $hospedaje = Hospedaje::where('id_comuna', '=', $idComuna)->get();

        return response()->json($hospedaje);
    }

    public function getLodgingInformation(Request $request)
    {
        $idHospedaje = $request->input('idHospedaje');

        $infoHospedaje = Hospedaje::join('tipo_hospedaje', 'hospedaje.id_tipo_hospedaje', 'tipo_hospedaje.id_tipo_hospedaje')
                                  ->join('comuna', 'hospedaje.id_comuna', 'comuna.id_comuna')
                                  ->join('provincia', 'comuna.id_provincia', 'provincia.id_provincia')
                                  ->join('region', 'provincia.id_region', 'region.id_region')
                                  ->where('hospedaje.id_hospedaje', '=', $idHospedaje)
                                  ->first();

        return response()->json($infoHospedaje);                                  
    }

    public function getTransportInformation(Request $request)
    {
        $idTransporte = $request->input('idTransporte');

        $infoTransporte = Transporte::where('id_transporte', '=', $idTransporte)
                                  ->first();

        return response()->json($infoTransporte);                                  
    }

    public function getTravelInformation(Request $request)
    {
        $idTransporte = $request->input('idTransporte');
        $idHospedaje = $request->input('idHospedaje');
        
        $fechaInicio = Carbon::parse($request->input('fechaInicio'));
        $fechaFinal = Carbon::parse($request->input('fechaFinal'));

        $totalDias = $fechaFinal->diffInDays($fechaInicio);

        $hospedaje = Hospedaje::join('tipo_hospedaje', 'hospedaje.id_tipo_hospedaje', 'tipo_hospedaje.id_tipo_hospedaje')
                                ->where('hospedaje.id_hospedaje', '=', $idHospedaje)
                                ->first();

        $infoTransporte = Transporte::where('id_transporte', '=', $idTransporte)
                                    ->first();



        $montoTotal = ($infoTransporte->monto_base_transporte * $hospedaje->cantidad_personas_tipo_hospedaje) + ($hospedaje->monto_base_tipo_hospedaje * $totalDias);

        return response()->json(['monto_total' => $montoTotal , 'cantidad_dias' => $totalDias]);
    }
}

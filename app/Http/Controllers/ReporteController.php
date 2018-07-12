<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Oferta;
use Barryvdh\DomPDF\Facade as PDF;

class ReporteController extends Controller
{
    function __construct()
    {
        $this->middleware('usuarios');
    } 
    
    public function index()
    {
        $infoOferta = Oferta::all();

        $oferta = Oferta::join('hospedaje', 'oferta.id_hospedaje', 'hospedaje.id_hospedaje')
                        ->join('comuna', 'hospedaje.id_comuna', 'comuna.id_comuna')
                        ->join('provincia', 'comuna.id_provincia', 'provincia.id_provincia')
                        ->join('region', 'provincia.id_region', 'region.id_region')
                        ->join('datos_usuario', 'oferta.id_datos_usuario', 'datos_usuario.id_datos_usuario')
                        ->join('cliente', 'oferta.id_cliente', 'cliente.id_cliente')
                        ->paginate(5);

        return view('Reportes.index', compact(['infoOferta', 'oferta']));
    }

    public function downloadReport()
    {
        $oferta = Oferta::join('hospedaje', 'oferta.id_hospedaje', 'hospedaje.id_hospedaje')
                        ->join('comuna', 'hospedaje.id_comuna', 'comuna.id_comuna')
                        ->join('provincia', 'comuna.id_provincia', 'provincia.id_provincia')
                        ->join('region', 'provincia.id_region', 'region.id_region')
                        ->join('datos_usuario', 'oferta.id_datos_usuario', 'datos_usuario.id_datos_usuario')
                        ->join('cliente', 'oferta.id_cliente', 'cliente.id_cliente')
                        ->get();

        $pdf = PDF::loadView('Reportes.pdf', compact('oferta'));    
        
        return $pdf->download('reporte.pdf');
    }
}

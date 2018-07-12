<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Oferta;
use App\Cliente;
use App\Region;
use App\Provincia;
use App\Comuna;
use App\Hospedaje;
use App\Transporte;
use Carbon\Carbon;
use Mail;
use App\User;
use Barryvdh\DomPDF\Facade as PDF;

class ViajeController extends Controller
{
    function __construct()
    {
        $this->middleware('viajes');
    } 
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $idTipoCliente = auth()->user()->id_datos_usuario;

        $ofertas = Oferta::join('transporte', 'oferta.id_transporte', 'transporte.id_transporte')
                        ->join('hospedaje', 'oferta.id_hospedaje', 'hospedaje.id_hospedaje')
                        ->join('cliente', 'oferta.id_cliente', 'cliente.id_cliente')
                        ->where('cliente.id_datos_usuario', '=', $idTipoCliente)
                        ->paginate(5);

        return view('Viajes.index', compact('ofertas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $idDatosUsuario = auth()->user()->id_datos_usuario;
        $cliente = Cliente::where('id_datos_usuario', '=', $idDatosUsuario)
                          ->get();

        $transporte = Transporte::all();
        $region = Region::all();       
        $provincia = Provincia::where('id_region', '=', 1)->get();
        $comuna = Comuna::where('id_provincia', '=', 1)->get();
        $hospedaje = Hospedaje::where('id_comuna', '=', 1)->get();

        return view('Viajes.create', compact(['cliente', 'region', 'transporte', 'provincia', 'comuna', 'hospedaje']));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $idTransporte = $request->input('transporte');
        $idHospedaje = $request->input('hospedaje');

        $fechaInicio = Carbon::parse($request->input('fechaInicio'));
        $fechaFinal = Carbon::parse($request->input('fechaFinal'));

        $totalDias = $fechaFinal->diffInDays($fechaInicio);

        $hospedaje = Hospedaje::join('tipo_hospedaje', 'hospedaje.id_tipo_hospedaje', 'tipo_hospedaje.id_tipo_hospedaje')
                              ->where('hospedaje.id_hospedaje', '=', $idHospedaje)
                              ->first();

        $infoTransporte = Transporte::where('id_transporte', '=', $idTransporte)
                                    ->first();


        $montoTotal = ($infoTransporte->monto_base_transporte * $hospedaje->cantidad_personas_tipo_hospedaje) + ($hospedaje->monto_base_tipo_hospedaje * $totalDias);                                    

        $oferta = new Oferta;
        $oferta->id_transporte = $request->input('transporte');
        $oferta->id_hospedaje = $request->input('hospedaje');
        $oferta->id_cliente = $request->input('institucion');
        $oferta->id_datos_usuario = null;
        $oferta->monto_total_oferta = $montoTotal;
        $oferta->monto_incremental = 0;
        $oferta->cantidad_dias_oferta = $totalDias;
        $oferta->fecha_inicio = $request->input('fechaInicio');
        $oferta->fecha_final = $request->input('fechaFinal');
        $oferta->save();


        $viaje = Oferta::join('transporte', 'oferta.id_transporte', 'transporte.id_transporte')
                        ->join('hospedaje', 'oferta.id_hospedaje', 'hospedaje.id_hospedaje')
                        ->join('cliente', 'oferta.id_cliente', 'cliente.id_cliente')
                        ->join('datos_usuario', 'oferta.id_datos_usuario', 'datos_usuario.id_datos_usuario')
                        ->join('tipo_hospedaje', 'hospedaje.id_tipo_hospedaje', 'tipo_hospedaje.id_tipo_hospedaje')
                        ->join('comuna', 'hospedaje.id_comuna', 'comuna.id_comuna')
                        ->join('provincia', 'comuna.id_provincia', 'provincia.id_provincia')
                        ->join('region', 'provincia.id_region', 'region.id_region')
                        ->where('oferta.id_oferta', '=', $oferta->id_oferta)
                        ->first();


        Mail::send('correo', ['viaje' => $viaje], function($correo) use ($viaje){
            $correo->to(auth()->user()->email, auth()->user()->email)->subject('Felicidades!!... Registraste El Viaje A '. $viaje->nombre_hospedaje . ' - ' . $viaje->nombre_region);
        });

        $agentes = User::where('id_perfil', '!=', 3);

        foreach ($agentes as $agente) {
            Mail::send('correo', ['viaje' => $viaje], function($correo) use ($viaje){
                $correo->to($agente->email, $agente->name)->subject('Se Ha Registrado El Siguiente Viaje!!');
            }); 
        }

        return back()->with('registrarViaje', 'El Viaje Se Registro Correctamente!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $oferta = Oferta::join('transporte', 'oferta.id_transporte', 'transporte.id_transporte')
                        ->join('hospedaje', 'oferta.id_hospedaje', 'hospedaje.id_hospedaje')
                        ->join('cliente', 'oferta.id_cliente', 'cliente.id_cliente')
                        ->join('datos_usuario', 'oferta.id_datos_usuario', 'datos_usuario.id_datos_usuario')
                        ->join('tipo_hospedaje', 'hospedaje.id_tipo_hospedaje', 'tipo_hospedaje.id_tipo_hospedaje')
                        ->join('comuna', 'hospedaje.id_comuna', 'comuna.id_comuna')
                        ->join('provincia', 'comuna.id_provincia', 'provincia.id_provincia')
                        ->join('region', 'provincia.id_region', 'region.id_region')
                        ->where('oferta.id_oferta', '=', $id)
                        ->first();

        $monto = Oferta::where('id_oferta', '=', $id)->first();

        $progreso = ($monto->monto_incremental * 100) / $monto->monto_total_oferta;                        

        return view('Viajes.show', compact(['oferta', 'progreso']));                        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $oferta = Oferta::join('transporte', 'oferta.id_transporte', 'transporte.id_transporte')
                        ->join('hospedaje', 'oferta.id_hospedaje', 'hospedaje.id_hospedaje')
                        ->join('cliente', 'oferta.id_cliente', 'cliente.id_cliente')
                        ->join('datos_usuario', 'oferta.id_datos_usuario', 'datos_usuario.id_datos_usuario')
                        ->join('tipo_hospedaje', 'hospedaje.id_tipo_hospedaje', 'tipo_hospedaje.id_tipo_hospedaje')
                        ->join('comuna', 'hospedaje.id_comuna', 'comuna.id_comuna')
                        ->join('provincia', 'comuna.id_provincia', 'provincia.id_provincia')
                        ->join('region', 'provincia.id_region', 'region.id_region')
                        ->where('oferta.id_oferta', '=', $id)
                        ->first();

        $monto = Oferta::where('id_oferta', '=', $id)->first();

        $progreso = ($monto->monto_incremental * 100) / $monto->monto_total_oferta;                        
        
        return view('Viajes.edit', compact(['oferta', 'progreso']));                                                           
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $montoIncremental = $request->input('montoIncremental');
        $oferta = Oferta::where('id_oferta', '=', $id)->first();

        if ($oferta->monto_total_oferta < $montoIncremental) 
        {
            return back()->with('errorPagarViaje', 'El Monto A Pagar No Puede Ser Mayor Al Monto Total Del Viaje!!');
        }
        else
        {
            $fecha = Carbon::now();
            $oferta->monto_incremental = $oferta->monto_incremental + $montoIncremental;
            $oferta->fecha_comprobante_oferta = $fecha->toDateString();
            $oferta->update();

            return back()->with('pagarViaje', 'El Viaje Se Pago Correctamente!!');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $oferta = Oferta::where('id_oferta', '=', $id);
        $oferta->delete();

        return back()->with('eliminarOferta', 'Se Ha Eliminado El Viaje Correctamente!!');
    }

    public function downloadVoucher($id)
    {
        $oferta = Oferta::join('transporte', 'oferta.id_transporte', 'transporte.id_transporte')
                        ->join('hospedaje', 'oferta.id_hospedaje', 'hospedaje.id_hospedaje')
                        ->join('cliente', 'oferta.id_cliente', 'cliente.id_cliente')
                        ->join('datos_usuario', 'oferta.id_datos_usuario', 'datos_usuario.id_datos_usuario')
                        ->join('tipo_hospedaje', 'hospedaje.id_tipo_hospedaje', 'tipo_hospedaje.id_tipo_hospedaje')
                        ->join('comuna', 'hospedaje.id_comuna', 'comuna.id_comuna')
                        ->join('provincia', 'comuna.id_provincia', 'provincia.id_provincia')
                        ->join('region', 'provincia.id_region', 'region.id_region')
                        ->where('oferta.id_oferta', '=', $id)
                        ->first();

        $pdf = PDF::loadView('Viajes.pdf', compact('oferta'));    
        
        return $pdf->download('comprobante.pdf');
    }
}

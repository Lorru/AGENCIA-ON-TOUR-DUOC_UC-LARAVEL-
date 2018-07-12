<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Oferta;
use Barryvdh\DomPDF\Facade as PDF;

class ClienteController extends Controller
{

    function __construct()
    {
        $this->middleware('clientes');
    } 

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $ofertas = Oferta::join('transporte', 'oferta.id_transporte', 'transporte.id_transporte')
        ->join('hospedaje', 'oferta.id_hospedaje', 'hospedaje.id_hospedaje')
        ->join('cliente', 'oferta.id_cliente', 'cliente.id_cliente')
        ->leftJoin('datos_usuario', 'oferta.id_datos_usuario', 'datos_usuario.id_datos_usuario')
        ->where('datos_usuario.id_datos_usuario', '=', null)
        ->paginate(5);

        return view('Clientes.index', compact('ofertas'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
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

        $contactoOferta = Oferta::join('cliente', 'oferta.id_cliente', 'cliente.id_cliente')
                                ->join('datos_usuario', 'cliente.id_datos_usuario', 'datos_usuario.id_datos_usuario')
                                ->join('users', 'datos_usuario.id_datos_usuario', 'users.id_datos_usuario')
                                ->where('oferta.id_oferta', '=', $id)
                                ->first();

        $monto = Oferta::where('id_oferta', '=', $id)->first();

        $progreso = ($monto->monto_incremental * 100) / $monto->monto_total_oferta;

        return view('Clientes.show', compact(['oferta', 'contactoOferta', 'progreso']));     
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update($id)
    {

        $idDatosUsuario = auth()->user()->id_datos_usuario;

        $oferta = Oferta::where('id_oferta', '=', $id)->first();

        $oferta->id_datos_usuario = $idDatosUsuario;
        $oferta->update();

        return back()->with('asignarCliente', 'Cliente Asignado Correctamente!!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }

    public function assigned()
    {
        $idDatosUsuario = auth()->user()->id_datos_usuario;

        $ofertas = Oferta::join('transporte', 'oferta.id_transporte', 'transporte.id_transporte')
        ->join('hospedaje', 'oferta.id_hospedaje', 'hospedaje.id_hospedaje')
        ->join('cliente', 'oferta.id_cliente', 'cliente.id_cliente')
        ->join('datos_usuario', 'oferta.id_datos_usuario', 'datos_usuario.id_datos_usuario')
        ->where('datos_usuario.id_datos_usuario', '=', $idDatosUsuario)
        ->paginate(5);

        return view('Clientes.assigned', compact('ofertas'));
    }

    public function appoint($id)
    {
        $oferta = Oferta::where('id_oferta', '=', $id)->first();

        $oferta->id_datos_usuario = 15;
        $oferta->update();

        return back()->with('designarCliente', 'Cliente Designado Correctamente!!');
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

        $pdf = PDF::loadView('Clientes.pdf', compact('oferta'));    
        
        return $pdf->download('comprobante.pdf');
    }
}

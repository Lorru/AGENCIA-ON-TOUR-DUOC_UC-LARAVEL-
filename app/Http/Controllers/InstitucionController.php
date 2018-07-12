<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\TipoCliente;
use App\Cliente;
use App\DatosUsuario;
use App\Oferta;

class InstitucionController extends Controller
{
    function __construct()
    {
        $this->middleware('instituciones');
    } 
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $idDatosUsuario = auth()->user()->id_datos_usuario;

        $clientes = Cliente::join('tipo_cliente', 'cliente.id_tipo_cliente', 'tipo_cliente.id_tipo_cliente')
                          ->join('datos_usuario', 'cliente.id_datos_usuario', 'datos_usuario.id_datos_usuario')
                          ->where('datos_usuario.id_datos_usuario', '=', $idDatosUsuario)
                          ->paginate(5);

        return view('Instituciones.index', compact('clientes'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $tipoCliente = TipoCliente::all();

        return view('Instituciones.create', compact('tipoCliente'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $idDatosUsuario = auth()->user()->id_datos_usuario;

        $cliente = new Cliente;
        $cliente->id_tipo_cliente = $request->input('institucion');
        $cliente->id_datos_usuario = $idDatosUsuario;
        $cliente->nombre_cliente = strtoupper($request->input('nombreInstitucion'));
        $cliente->direccion_cliente = strtoupper($request->input('direccionInstitucion'));
        $cliente->save();

        return back()->with('registroCliente', 'Se Ha Registrado La Institucion Correctamente!!');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $cliente = Cliente::join('tipo_cliente', 'cliente.id_tipo_cliente', 'tipo_cliente.id_tipo_cliente')
                          ->where('cliente.id_cliente', '=', $id)
                          ->first();

        return view('Instituciones.show', compact('cliente'));                          
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $cliente = Cliente::where('id_cliente', '=', $id)->first();

        $tipoCliente = TipoCliente::all();

        return view('Instituciones.edit', compact(['cliente', 'tipoCliente']));
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
        $cliente = Cliente::where('id_cliente', '=', $id)->first();

        $cliente->id_tipo_cliente = $request->input('institucion');
        $cliente->nombre_cliente = strtoupper($request->input('nombreInstitucion'));
        $cliente->direccion_cliente = strtoupper($request->input('direccionInstitucion'));
        $cliente->update();

        return back()->with('editarCliente', 'Se Actualizo La Institucion Correctamente!!');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {

        $oferta = Oferta::where('id_cliente', '=', $id);

        if ($oferta->count() > 0) 
        {
            return back()->with('errorEliminarCliente', 'No Se Puede Eliminar Esta Institucion, Ya Que Tiene Un Viaje Asignado!!');
        }
        else
        {
            $cliente = Cliente::where('id_cliente', '=', $id);
            $cliente->delete();
            
            return back()->with('eliminarCliente', 'Se Ha Eliminado La Institucion Correctamente!!');
        }
    }
}

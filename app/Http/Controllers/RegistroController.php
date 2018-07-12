<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Genero;
use App\DatosUsuario;
use App\User;
use Hash;

class RegistroController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $generos = Genero::all();
        return view('Registro.index', compact('generos'));
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
        $correo = $request->input('correo');
        $buscarUsuario = User::where("email", "=", $correo)->get();

        if($buscarUsuario->count() > 0)
        {
            return back()->with('errorCrearUsuario', 'El Usuario Ya Existe!!');
        }
        else
        {
            $datosUsuario = new DatosUsuario;
            $datosUsuario->id_genero = $request->input('genero');
            $datosUsuario->rut_datos_usuario = $request->input('rut');
            $datosUsuario->primer_nombre_datos_usuario = strtoupper($request->input('primerNombre'));
            $datosUsuario->segundo_nombre_datos_usuario = strtoupper($request->input('segundoNombre'));
            $datosUsuario->primer_apellido_datos_usuario = strtoupper($request->input('primerApellido'));
            $datosUsuario->segundo_apellido_datos_usuario = strtoupper($request->input('segundoApellido'));
            $datosUsuario->telefono_datos_usuario = $request->input('telefono');
            $datosUsuario->save();
    
            $nombreCompleto = $request->input('primerNombre') . " " . $request->input('segundoNombre') . " " . $request->input('primerApellido') . " " . $request->input('segundoApellido');

            $usuario = new User;
            $usuario->id_datos_usuario = $datosUsuario->id_datos_usuario;
            $usuario->id_perfil = 3;
            $usuario->name = strtoupper($nombreCompleto);
            $usuario->email = $request->input('correo');
            $usuario->password = Hash::make($request->input('clave'));
            $usuario->save();
    
            return back()->with('crearUsuario', 'Se Creo El Usuario Correctamente!!');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
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
        //
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
}

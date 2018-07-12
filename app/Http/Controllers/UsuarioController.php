<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Cliente;
use App\DatosUsuario;
use App\Genero;
use App\Perfil;
use Hash;

class UsuarioController extends Controller
{
    function __construct()
    {
        $this->middleware('usuarios');
    } 
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $usuarios = User::join('perfil', 'users.id_perfil', 'perfil.id_perfil')
                         ->paginate(5);

        return view('Usuarios.index', compact('usuarios'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $genero = Genero::all();
        $perfil = Perfil::all();

        return view('Usuarios.create', compact(['genero', 'perfil']));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $perfil = $request->input('perfil');

        $correo = $request->input('correo');
        $buscarUsuario = User::where("email", "=", $correo)->get();

        if($buscarUsuario->count() > 0)
        {
            return back()->with('errorCrearUsuario', 'El Usuario Ya Existe!!');
        }else
        {
            if ($perfil == 3) 
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
                $datosUsuario->fecha_nacimiento_datos_usuario = $request->input('fechaNacimiento');
                $datosUsuario->direccion_domicilio_datos_usuario = $request->input('direccionDomicilio');
                $datosUsuario->save();   
                
                $nombreCompleto = $request->input('primerNombre') . " " . $request->input('segundoNombre') . " " . $request->input('primerApellido') . " " . $request->input('segundoApellido');

                $usuario = new User;
                $usuario->id_datos_usuario = $datosUsuario->id_datos_usuario;
                $usuario->id_perfil = $request->input('perfil');
                $usuario->name = strtoupper($nombreCompleto);
                $usuario->email = $request->input('correo');
                $usuario->password = Hash::make($request->input('clave'));
                $usuario->save();
        
                return back()->with('crearUsuario', 'Se Creo El Usuario Correctamente!!');
            }
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
        $usuario = User::join('perfil', 'users.id_perfil', 'perfil.id_perfil')
                       ->join('datos_usuario', 'users.id_datos_usuario', 'datos_usuario.id_datos_usuario')
                       ->join('genero', 'datos_usuario.id_genero', 'genero.id_genero')
                       ->where('users.id', '=', $id)
                       ->first();

        return view('Usuarios.show', compact('usuario'));                       
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $genero = Genero::all();
        $perfil = Perfil::all();

        $usuario = User::join('perfil', 'users.id_perfil', 'perfil.id_perfil')
                        ->join('datos_usuario', 'users.id_datos_usuario', 'datos_usuario.id_datos_usuario')
                        ->join('genero', 'datos_usuario.id_genero', 'genero.id_genero')
                        ->where('users.id', '=', $id)
                        ->first();

        return view('Usuarios.edit', compact(['genero', 'perfil', 'usuario']));
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
        $perfil = $request->input('perfil');        

        if ($perfil == 3) 
        {
            $usuario = User::where('id', '=', $id)->first();

            $datosUsuario = DatosUsuario::where('id_datos_usuario', '=', $usuario->id_datos_usuario)->first();
            $datosUsuario->id_genero = $request->input('genero');
            $datosUsuario->rut_datos_usuario = $request->input('rut');
            $datosUsuario->primer_nombre_datos_usuario = strtoupper($request->input('primerNombre'));
            $datosUsuario->segundo_nombre_datos_usuario = strtoupper($request->input('segundoNombre'));
            $datosUsuario->primer_apellido_datos_usuario = strtoupper($request->input('primerApellido'));
            $datosUsuario->segundo_apellido_datos_usuario = strtoupper($request->input('segundoApellido'));
            $datosUsuario->telefono_datos_usuario = $request->input('telefono');
            $datosUsuario->fecha_nacimiento_datos_usuario = null;
            $datosUsuario->direccion_domicilio_datos_usuario = null;
            $datosUsuario->update();   
            
            $nombreCompleto = $request->input('primerNombre') . " " . $request->input('segundoNombre') . " " . $request->input('primerApellido') . " " . $request->input('segundoApellido');
            
            $usuario->id_perfil = $request->input('perfil');
            $usuario->name = strtoupper($nombreCompleto);
            $usuario->email = $request->input('correo');
            $usuario->password = Hash::make($request->input('clave'));
            $usuario->update();
    
            return back()->with('actualizarUsuario', 'Se Actualizo El Usuario Correctamente!!');
        }
        else
        {
            $usuario = User::where('id', '=', $id)->first();

            $datosUsuario = DatosUsuario::where('id_datos_usuario', '=', $usuario->id_datos_usuario)->first();
            $datosUsuario->id_genero = $request->input('genero');
            $datosUsuario->rut_datos_usuario = $request->input('rut');
            $datosUsuario->primer_nombre_datos_usuario = strtoupper($request->input('primerNombre'));
            $datosUsuario->segundo_nombre_datos_usuario = strtoupper($request->input('segundoNombre'));
            $datosUsuario->primer_apellido_datos_usuario = strtoupper($request->input('primerApellido'));
            $datosUsuario->segundo_apellido_datos_usuario = strtoupper($request->input('segundoApellido'));
            $datosUsuario->telefono_datos_usuario = $request->input('telefono');
            $datosUsuario->fecha_nacimiento_datos_usuario = $request->input('fechaNacimiento');
            $datosUsuario->direccion_domicilio_datos_usuario = $request->input('direccionDomicilio');
            $datosUsuario->update();   
            
            $nombreCompleto = $request->input('primerNombre') . " " . $request->input('segundoNombre') . " " . $request->input('primerApellido') . " " . $request->input('segundoApellido');

            $usuario->id_perfil = $request->input('perfil');
            $usuario->name = strtoupper($nombreCompleto);
            $usuario->email = $request->input('correo');
            $usuario->password = Hash::make($request->input('clave'));
            $usuario->update();
    
            return back()->with('actualizarUsuario', 'Se Actualizo El Usuario Correctamente!!');
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
        $cliente = Cliente::join('datos_usuario', 'cliente.id_datos_usuario', 'datos_usuario.id_datos_usuario')
                          ->join('users', 'datos_usuario.id_datos_usuario', 'users.id_datos_usuario')
                          ->where('users.id', '=', $id);

        $idDatosUsuario = auth()->user()->id_datos_usuario;

        $agente = User::join('oferta', 'users.id_datos_usuario', 'oferta.id_datos_usuario')                          
                      ->where('users.id', '=', $id);

        
        if($agente->count() > 0)                      
        {
            return back()->with('errorEliminarUsuario', 'No Se Puede Eliminar El Usuario, Ya Que Tiene Asignado Un Viaje Asignado!!');
        }
        else
        {
            if ($cliente->count() > 0) 
            {
                return back()->with('errorEliminarUsuario', 'No Se Puede Eliminar El Usuario, Ya Que Tiene Asignado Una Institucion Y Posiblemente Un Viaje Asignado!!');
            }         
            else
            {
                $usuario = User::where('id', '=', $id)->first();
                $idDatosUsuario = $usuario->id_datos_usuario;
                $usuario->delete();
    
                $datosUsuario = DatosUsuario::where('id_datos_usuario', '=', $idDatosUsuario);
                $datosUsuario->delete();
    
                return back()->with('eliminarUsuario', 'Se Elimino El Usuario Correctamente!!');
            }                 
        }
    }
}

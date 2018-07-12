<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{
    public function index()
    {
        return view('Login.index');
    }

    public function login(Request $request)
    {
        $correo = $request->input('correo');
        $clave = $request->input('clave');

        $result = Auth::attempt([
            'email' => $correo,
            'password' => $clave
        ]);
        if($result)
        {
            return redirect()->route('Inicio');
        }
        else
        {
            return back()->with('errorLogin', 'Correo O Clave Incorrecto!!');
        }
    }

    public function logout()
    {
        auth::logout();
        
        return redirect()->route('/')->with('logout', 'Se Ha Cerrado La Session Correctamente!!');
    }
}

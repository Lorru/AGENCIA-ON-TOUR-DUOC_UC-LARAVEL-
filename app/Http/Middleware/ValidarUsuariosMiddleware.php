<?php

namespace App\Http\Middleware;

use Closure;

class ValidarUsuariosMiddleware
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        static $idPerfil = 1;

        if(auth()->guest())
        {
            return redirect()->route('/')->with('inicioSession', 'Debes Iniciar Session!!');
        }else
        {
            if(auth()->user()->id_perfil != $idPerfil)
            {
                return redirect('Inicio');
            }
        }

        return $next($request);
    }
}

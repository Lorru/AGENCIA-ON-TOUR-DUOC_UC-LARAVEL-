<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class InicioController extends Controller
{
    function __construct()
    {
        $this->middleware('inicio');
    } 

    public function index()
    {
        return view('inicio');
    }
}
